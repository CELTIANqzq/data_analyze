package test.util;

import com.csvreader.CsvReader;
import com.data_analyze.core.dao.BaseMapper;
import com.data_analyze.paper.dao.PaperMapper;
import com.data_analyze.paper.dao.PaperSysMapper;
import com.data_analyze.paper.entity.Paper;
import com.data_analyze.project.dao.ProjectSysMapper;
import com.data_analyze.project.entity.Project;
import com.data_analyze.publication.dao.PublicationMapper;
import com.data_analyze.teach.dao.TeachSysMapper;
import com.data_analyze.teacher.dao.TeacherMapper;
import com.data_analyze.teacher.dao.TeacherSysMapper;
import com.data_analyze.teacher.entity.Teacher;
import com.data_analyze.teachsum.dao.TeachsumMapper;
import com.data_analyze.utils.DateTimeHelper;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import test.base.BaseTest;

import java.io.*;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by jiacheng on 17-4-2.
 */
public class ImportCsv extends BaseTest{
    @Autowired
    private TeacherSysMapper teacherSysMapper;
    @Autowired
    private TeacherMapper teacherMapper;
    @Autowired
    private PaperSysMapper paperSysMapper;
    @Autowired
    private ProjectSysMapper projectSysMapper;
    @Autowired
    private PublicationMapper publicationMapper;
    @Autowired
    private TeachSysMapper teachSysMapper;
    @Autowired
    private TeachsumMapper teachsumMapper;


    public List<String[]> csvToList(File file, String encoding) throws IOException {

        InputStreamReader read = new InputStreamReader(new FileInputStream(file), encoding);
        BufferedReader bufferedReader = new BufferedReader(read);
        String line = null;
        List<String[]> table = new ArrayList<>();
        while((line = bufferedReader.readLine()) != null){
            String[] row = line.split(",");
            for(int i=0; i<row.length; ++i) {
                row[i] = row[i].trim();  // 除去空格
            }
            table.add(row);
        }
        return table;
    }

    @Deprecated
    public void listToDb(List<String[]> table, String entityClass, BaseMapper mapper, String tableName) throws ClassNotFoundException, IllegalAccessException, InstantiationException, NoSuchFieldException {
        int tableLength = table.size();
        int fieldLength = table.get(0).length;
        Class<?> beanClass = Class.forName(entityClass);
        // 根据table的表头读入类的field
        List<Field> fieldList = new ArrayList<>();
        for(int i=0; i<fieldLength; ++i) {
            Field field = beanClass.getDeclaredField(table.get(0)[i]);
            field.setAccessible(true);
            fieldList.add(field);
        }
         // 读入table把相应的field注入，存入数据库
        Object bean = beanClass.newInstance();
        for(int i=1; i<tableLength; ++i) {
            for(int j=0; j<fieldLength; ++j) { // 注入field
                String content = table.get(i)[j];
                fieldList.get(j).set(bean, table.get(i)[j]);
            }
            mapper.insertDynamic(bean, tableName);  // 存入数据库
        }
    }

    public void importPaper(int year, String filePath) throws IOException {
        String tableName = "papers"+year;
        File file = new File(filePath);
        List<String[]> list = csvToList(file, "GBK");
        Paper bean = new Paper();
        int tableLength = list.size();
        int fileLength = list.get(1).length;
        for(int i=1; i<tableLength; ++i) {
            for(int j=0; j<fileLength; ++j) {
                String content = list.get(i)[j];
                switch (list.get(0)[j]) {
                    case "ids_num":
                        bean.setIds_num(content); break;
                    case "year":
                        bean.setYear(DateTimeHelper.ordinaryStringToTimestamp(content)); break;
                    case "author":
                        String salary_id = teacherMapper.getSalaryIdFromName(content);
                        bean.setSalary_id(salary_id);
                        bean.setAuthor(content);
                        break;
                    case "level":
                        bean.setLevel(content); break;
                    case "title":
                        bean.setTitle(content); break;
                }
            }
            if(bean.getSalary_id()!=null) {
                paperSysMapper.insertDynamic(bean, tableName);
            }
        }
    }

    public void importProject(int year, String filePath) throws IOException {
        String tableName = "projects"+year;
        File file = new File(filePath);
        List<String[]> list = csvToList(file, "GBK");
        Project bean = new Project();
        int tableLength = list.size();
        int fileLength = list.get(1).length;
        for(int i=1; i<tableLength; ++i) {
            for(int j=0; j<fileLength; ++j) {
                String content = list.get(i)[j];
                switch (list.get(0)[j]) {
                    case "name":
                        String salary_id = teacherMapper.getSalaryIdFromName(content);
                        bean.setSalary_id(salary_id);
                        bean.setName(content);
                        break;
                    case "type":
                        bean.setType(Boolean.valueOf(content)); break;
                    case "budget_in_acc":
                        bean.setBudget_in_acc(Float.valueOf(content)); break;
                }
            }
            if(bean.getSalary_id() != null) {
                projectSysMapper.insertDynamic(bean, tableName);
            }
        }
    }

    public void importTeach(int year, String filePath) {
        String tableName = "teach" + year;
    }
    public void importTeachsum(int year, String filePath) {
        String tableName = "teachsum" + year;
    }


    public void importTeacher(String filePath) throws IOException {
        File file = new File(filePath);
        List<String[]> list = csvToList(file, "UTF-8");
        Teacher teacher = new Teacher();
        int tableLength = list.size();
        int fileLength = list.get(0).length;
        for(int i=1; i<tableLength; ++i) {
            for(int j=0; j<fileLength; ++j) {
                String content = list.get(i)[j];
                switch (list.get(0)[j]) {
                    case "salary_id":
                        teacher.setSalary_id(content); break;
                    case "name":
                        teacher.setName(content); break;
                    case "office":
                        teacher.setOffice(content); break;
                    case "race":
                        teacher.setRace(content); break;
                    case "identity":
                        teacher.setIdentity(content); break;
                    case "hometown":
                        teacher.setHometown(content); break;
                    case "politics_status":
                        teacher.setPolitics_status(content); break;
                    case "job":
                        teacher.setJob(content); break;
                    case "job_status":
                        teacher.setJob_status(content); break;
                    case "on_status":
                        teacher.setOn_status(content); break;
                    case "department":
                        teacher.setDepartment(content); break;
                    case "join_reason":
                        teacher.setJoin_reason(content); break;
                    case "attendance_category":
                        teacher.setAttendance_category(content); break;
                    case "job_level":
                        teacher.setJob_level(content); break;
                    case "administrative_post":
                        teacher.setAdministrative_post(content); break;
                    case "prof_and_tech_post":
                        teacher.setProf_and_tech_post(content); break;
                    case "special_experience":
                        teacher.setSpecial_experience(content); break;
                    case "last_edu_background":
                        teacher.setLast_edu_background(content); break;
                    case "degree":
                        teacher.setDegree(content); break;
                    case "last_degree":
                        teacher.setLast_degree(content); break;
                    case "subject":
                        teacher.setSubject(content); break;
                    case "remark":
                        teacher.setRemark(content); break;
                    case "mentor_type":
                        teacher.setMentor_type(content); break;
                    case "major":
                        teacher.setMajor(content); break;
                    case "gender":
                        teacher.setGender(Boolean.valueOf(content)); break;
                    case "birthday":
                        teacher.setBirthday(DateTimeHelper.ordinaryStringToTimestamp(content)); break;
                    case "join":
                        teacher.setJoin_job_time(DateTimeHelper.ordinaryStringToTimestamp(content)); break;
                    case "join_time":
                        teacher.setJoin_time(DateTimeHelper.ordinaryStringToTimestamp(content)); break;
                    case "join_school_time":
                        teacher.setJoin_school_time(DateTimeHelper.ordinaryStringToTimestamp(content)); break;
                    case "join_job_time":
                        teacher.setJoin_job_time(DateTimeHelper.ordinaryStringToTimestamp(content)); break;
                    case "degree_time":
                        teacher.setDegree_time(DateTimeHelper.ordinaryStringToTimestamp(content)); break;
                    case "authorized":
                        teacher.setAuthorized(Boolean.valueOf(content)); break;
                }
            }
            System.out.println(teacher);
            teacherMapper.insert(teacher);
        }
    }

    @Test
    public void executeImportTeacher() throws IOException {
        String filePath = "/home/jiacheng/下载/data_analyze/sql/csv/teacher.csv";
        importTeacher(filePath);
    }


}
