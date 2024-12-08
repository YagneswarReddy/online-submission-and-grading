package com.example.demo.config;

import org.springframework.context.annotation.Configuration;

@Configuration
public class SecurityConfig {

   // @Bean
	/*
	 * public SecurityFilterChain securityFilterChain(HttpSecurity http) throws
	 * Exception { http .csrf().disable() .authorizeRequests()
	 * .requestMatchers("/teacher/**").hasRole("TEACHER")
	 * .requestMatchers("/student/**").hasRole("STUDENT")
	 * .anyRequest().authenticated() .and() .formLogin() .permitAll() .and()
	 * .logout() .logoutSuccessUrl("/login") .permitAll();
	 * 
	 * return http.build(); }
	 * 
	 * // @Bean public PasswordEncoder passwordEncoder() { return new
	 * BCryptPasswordEncoder(); }
	 */}
