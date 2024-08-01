package study.module.test;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class BackendApplication implements CommandLineRunner {

    private final CustomConfiguration configuration;

    public BackendApplication(final CustomConfiguration configuration) {
        this.configuration = configuration;
    }

    public static void main(final String[] args) {
        SpringApplication.run(BackendApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        System.out.println("Custom Property: " + configuration.getAuthor());
    }
}
