package fr.cs.javastl2.tag;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

import java.io.IOException;
import java.util.ArrayList;

public class UlTag extends SimpleTagSupport {
    ArrayList<String> items;

    public ArrayList<String> getItems() {
        return items;
    }

    public void setItems(ArrayList<String> items) {
        this.items = items;
    }

    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();

        for (String element : items) {
            out.println("<ul>");
            out.println("<li>");
            out.println(element);
            out.println("</li>");
            out.println("</ul>");

        }
    }

}
