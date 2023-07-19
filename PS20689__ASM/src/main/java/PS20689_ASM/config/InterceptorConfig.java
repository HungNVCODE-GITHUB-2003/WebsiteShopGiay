package PS20689_ASM.config;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


import PS20689_ASM.interceptor.LoggerInterceptor;
import PS20689_ASM.interceptor.SecurityInterceptor;



@Configuration
public class InterceptorConfig implements WebMvcConfigurer{
	@Autowired
	LoggerInterceptor interceptor;
	
	@Autowired
	SecurityInterceptor auth;
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(interceptor)
			.addPathPatterns("/**")
			.excludePathPatterns("/assets/**");
		
		
//		registry.addInterceptor(auth)
//			.addPathPatterns(,"/admin/**")
//			.excludePathPatterns("/user/index","/user/login", "/admin/user/index");
		
		
	}
	
	
}
