package study.module.test;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;

@Configuration
public class CustomConfiguration {

    @Value("${submodule.author}")
    private String author;

    public String getAuthor() {
        return author;
    }
}
