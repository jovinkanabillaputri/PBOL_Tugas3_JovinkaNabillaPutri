<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nim = request.getParameter("nim");
    String nama = request.getParameter("nama");
    String prodi = request.getParameter("prodi");
    String jk = request.getParameter("jk");
    String alamat = request.getParameter("alamat");

    String[] hobi = request.getParameterValues("hobi");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Hasil Data Mahasiswa</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<div class="result-wrapper">
<h2 class="title">Data Mahasiswa (getParameter)</h2>

<table class="data-table">
    <tr><td>NIM</td><td><%= nim %></td></tr>
    <tr><td>Nama</td><td><%= nama %></td></tr>
    <tr><td>Prodi</td><td><%= prodi %></td></tr>
    <tr><td>Jenis Kelamin</td><td><%= jk %></td></tr>
    <tr><td>Alamat</td><td><%= alamat %></td></tr>
    <tr>
        <td>Hobi</td>
        <td>
            <%
                if(hobi != null){
                    for(String h : hobi){
                        out.print(h + " ");
                    }
                }
            %>
        </td>
    </tr>
</table>

<hr>

<h2 class="title">Data Mahasiswa (Loop getParameterNames)</h2>

<div class="result-card">
<%
    java.util.Enumeration paramNames = request.getParameterNames();

    while(paramNames.hasMoreElements()){
        String paramName = (String) paramNames.nextElement();
        String[] paramValues = request.getParameterValues(paramName);
%>

    <p>
        <span class="param"><%= paramName %></span> :
        <%
            for(String val : paramValues){
                out.print(val + " ");
            }
        %>
    </p>

<%
    }
%>
</div>

</div>
</body>
</html>