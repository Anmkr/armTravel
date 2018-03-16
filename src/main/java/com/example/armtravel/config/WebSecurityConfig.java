package com.example.armtravel.config;

import com.example.armtravel.handler.CustomAuthenticationFailureHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;


@Configuration
@EnableWebSecurity

public class WebSecurityConfig extends WebSecurityConfigurerAdapter {


    @Autowired
    private UserDetailsService userDetailsService;

    @Autowired
    private PasswordEncoder passwordEncoder;





    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable()
                .formLogin()
                .loginPage("/login")
                .usernameParameter("j_email")//grel nuyn dzevov inches vor formimej
                .passwordParameter("j_password")
                .defaultSuccessUrl("/loginSuccess")
                .failureUrl("/404")
                .failureHandler(new CustomAuthenticationFailureHandler())
                .and()
                .logout()
                .logoutSuccessUrl("/")
                .and()
                .authorizeRequests()
                .antMatchers("/admin/**").hasAuthority("ADMIN")
               .antMatchers("/user/**").hasAuthority("USER")
                //.antMatchers("/loginPage/**").permitAll()
                //.anyRequest().fullyAuthenticated()
                .anyRequest().permitAll();
    }

//                .authorizeRequests()
//                .antMatchers("/admin/**").hasAuthority("ADMIN")
//                .antMatchers("/user/**").hasAuthority("USER")
//                .anyRequest().permitAll()
//                .and()
//                .formLogin()
//                .loginPage("/loginPage")
//                .usernameParameter("email")
//                .passwordParameter("password")
//                .defaultSuccessUrl("/login")
//                .permitAll();


    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth
                .userDetailsService(userDetailsService)
                .passwordEncoder(passwordEncoder);
    }

    @Bean
    public PasswordEncoder encoder() {
        return new BCryptPasswordEncoder();
    }

}







