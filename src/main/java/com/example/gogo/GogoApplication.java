package com.example.gogo;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import org.springframework.context.annotation.Bean;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

import javax.sql.DataSource;

@SpringBootApplication
public class GogoApplication {
	public static void main(String[] args) {
		SpringApplication.run(GogoApplication.class, args);
	}



	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception{
		SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
		sessionFactory.setDataSource(dataSource);

		/* xml 파일 위치 지정 */
		/* src/main/resources에 있는 mapper폴더 아래 모든 xml 파일 */
		Resource[] res = new PathMatchingResourcePatternResolver().getResources("classpath:mappers/**/*.xml");
		sessionFactory.setMapperLocations(res);

		/* xml 파일에서 사용할 Model 폴더 지정 */
		sessionFactory.setTypeAliasesPackage("com.example.gogo.*.vo");

		return sessionFactory.getObject();
	}

}
