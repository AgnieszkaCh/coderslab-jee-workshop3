# JEE Workshop III

Web application of a computer programming school.

## Technologies

Servlet API, JSP, JSTL, EL, JDBC, ActiveRecord...

## References

1. [Slides](https://materialy.coderslab.pl/build/JEE_Presentations/v3.1/M_03_S_03_Warsztaty_3?1544697634#/)
1. [Mockup](https://app.moqups.com/arek-cl/CLpMMElO6t/view/page/ad64222d5)

## Requirements

* Apache Tomcat (9.0.13)
* MySQL Server (5.7.24)
* JDK 8 (Oracle 1.8.0_191)

## Installation

### Populate Database

This will create database schema and populate tables with some test data.
```shell
$ mysql -u root -proot < schema.sql
```

Note: database credentials are assumed to be `root` / `root`.

### Deploy WAR

Web application must be deployed under `/` as context path.
