package pack;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.util.concurrent.atomic.AtomicReference;

import static pack.User.ROLE.ADMIN;
import static pack.User.ROLE.USER;

@WebListener
public class ContextListener implements ServletContextListener {

    private AtomicReference<UserDAO> dao;

    public void contextInitialized(ServletContextEvent servletContextEvent) {

        dao = new AtomicReference<UserDAO>(new UserDAO());

        dao.get().add(new User(1, "user111", "1", ADMIN));
        dao.get().add(new User(2, "user211", "2", ADMIN));
        dao.get().add(new User(3, "user311", "3", ADMIN));
        dao.get().add(new User(4, "user411", "4", ADMIN));

        final ServletContext servletContext =
                servletContextEvent.getServletContext();

        servletContext.setAttribute("dao", dao);
    }

    public void contextDestroyed(ServletContextEvent sce) {
        dao = null;
    }
}
