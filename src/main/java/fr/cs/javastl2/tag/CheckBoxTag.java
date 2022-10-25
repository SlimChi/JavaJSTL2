package fr.cs.javastl2.tag;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

import java.io.IOException;
import java.util.ArrayList;

public class CheckBoxTag extends SimpleTagSupport {

    String name;
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    ArrayList<String> liste = new ArrayList<>();

    public ArrayList<String> getListe() {
        return liste;
    }

    public void setListe(ArrayList<String> liste) {
        this.liste = liste;
    }


    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        for (String element : liste) {
            out.println("<tr>");
            out.println("<td>" + element + "</td>");
            out.println(" <td><input type = 'checkbox' name =" + name + " value = " + element + " ></td>");
            out.println("</tr>");
        }
    }
}
