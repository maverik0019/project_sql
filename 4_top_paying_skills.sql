/*
Answer: What are the top skills based on salary?
- Look at the average salary associated with each skill for Data Analyst positions
- Focuses on roles with specified salaries, regardless of location
- Why? It reveals how different skills impact salary levels for Data Analysts and 
    helps identify the most financially rewarding skills to acquire or improve
*/

SELECT 
    skills,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' 
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = True 
GROUP BY
    skills
ORDER BY
    avg_salary DESC
LIMIT 25;


/*


Este JSON lista habilidades tecnológicas específicas junto con su salario promedio asociado. Un insight interesante que 
podemos obtener de estos datos es la creciente importancia y valor de las habilidades relacionadas con el procesamiento 
y análisis de grandes volúmenes de datos, así como el desarrollo de aplicaciones modernas y la gestión de infraestructura 
en la nube.

- Alta demanda de habilidades en procesamiento de datos y Big Data: La habilidad mejor pagada en esta lista es pyspark, 
con un salario promedio de $208,172. PySpark es una interfaz para Apache Spark en Python. No solo permite el procesamiento
 de grandes volúmenes de datos de manera eficiente, sino que también soporta operaciones de machine learning, lo cual es 
 crucial en la era actual de la analítica avanzada y el big data.

- Herramientas de versionado y colaboración también son valiosas: bitbucket, con un salario promedio de $189,155, destaca
 la importancia de las habilidades de gestión de código fuente y colaboración en el desarrollo de software. Herramientas 
 como Bitbucket y gitlab ($154,500) son esenciales para el trabajo en equipo en proyectos de desarrollo de software.

- Importancia de las bases de datos NoSQL y las tecnologías emergentes: couchbase y watson (ambos con $160,515) representan 
el valor creciente de las bases de datos NoSQL y las soluciones de inteligencia artificial en el mercado laboral. Esto 
refleja la demanda de profesionales capaces de trabajar con grandes conjuntos de datos no estructurados y de implementar 
soluciones de IA.

- El ecosistema Python sigue siendo crítico: Herramientas y librerías del ecosistema Python como jupyter, pandas, y numpy 
muestran salarios promedio altos (desde $143,513 a $152,777), reafirmando la relevancia de Python en campos como la ciencia
 de datos, machine learning, y análisis de datos.

- La infraestructura moderna y la orquestación de contenedores son clave: kubernetes, con un salario promedio de $132,500, 
destaca la importancia de las habilidades en la orquestación de contenedores para la gestión eficiente de aplicaciones en 
entornos de nube.

Este análisis sugiere que las habilidades que combinan conocimientos avanzados de análisis de datos, manejo de grandes 
bases de datos, desarrollo y gestión de infraestructura en la nube, así como la colaboración y gestión de código fuente, 
están entre las más valoradas en el mercado laboral actual. Esto refleja una tendencia hacia la digitalización, la analítica
 de datos avanzada, y la automatización en diversas industrias.

///

This JSON lists specific technological skills along with their associated average salary. An interesting insight we can 
derive from this data is the increasing importance and value of skills related to the processing and analysis of large 
volumes of data, as well as the development of modern applications and cloud infrastructure management.

- High demand for data processing and Big Data skills: The highest-paid skill in this list is PySpark, with an average 
salary of $208,172. PySpark is an interface for Apache Spark in Python. It not only allows for efficient processing of 
large volumes of data but also supports machine learning operations, which are crucial in the current era of advanced 
analytics and big data.

- Versioning and collaboration tools are also valuable: Bitbucket, with an average salary of $189,155, highlights the 
importance of source code management and collaboration skills in software development. Tools like Bitbucket and GitLab 
($154,500) are essential for teamwork in software development projects.

- Importance of NoSQL databases and emerging technologies: Couchbase and Watson (both with $160,515) represent the 
growing value of NoSQL databases and artificial intelligence solutions in the job market. This reflects the demand for 
professionals capable of working with large unstructured data sets and implementing AI solutions.

- The Python ecosystem remains critical: Tools and libraries from the Python ecosystem such as Jupyter, Pandas, and NumPy 
show high average salaries (from $143,513 to $152,777), reaffirming the relevance of Python in fields like data science, 
machine learning, and data analysis.

- Modern infrastructure and container orchestration are key: Kubernetes, with an average salary of $132,500, highlights 
the importance of container orchestration skills for efficient application management in cloud environments.

This analysis suggests that skills combining advanced data analysis knowledge, large database management, development and 
management of cloud infrastructure, as well as collaboration and source code management, are among the most valued in the 
current job market. This reflects a trend towards digitalization, advanced data analytics, and automation across various 
industries.



[
  {
    "skills": "pyspark",
    "avg_salary": "208172"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "189155"
  },
  {
    "skills": "couchbase",
    "avg_salary": "160515"
  },
  {
    "skills": "watson",
    "avg_salary": "160515"
  },
  {
    "skills": "datarobot",
    "avg_salary": "155486"
  },
  {
    "skills": "gitlab",
    "avg_salary": "154500"
  },
  {
    "skills": "swift",
    "avg_salary": "153750"
  },
  {
    "skills": "jupyter",
    "avg_salary": "152777"
  },
  {
    "skills": "pandas",
    "avg_salary": "151821"
  },
  {
    "skills": "elasticsearch",
    "avg_salary": "145000"
  },
  {
    "skills": "golang",
    "avg_salary": "145000"
  },
  {
    "skills": "numpy",
    "avg_salary": "143513"
  },
  {
    "skills": "databricks",
    "avg_salary": "141907"
  },
  {
    "skills": "linux",
    "avg_salary": "136508"
  },
  {
    "skills": "kubernetes",
    "avg_salary": "132500"
  },
  {
    "skills": "atlassian",
    "avg_salary": "131162"
  },
  {
    "skills": "twilio",
    "avg_salary": "127000"
  },
  {
    "skills": "airflow",
    "avg_salary": "126103"
  },
  {
    "skills": "scikit-learn",
    "avg_salary": "125781"
  },
  {
    "skills": "jenkins",
    "avg_salary": "125436"
  },
  {
    "skills": "notion",
    "avg_salary": "125000"
  },
  {
    "skills": "scala",
    "avg_salary": "124903"
  },
  {
    "skills": "postgresql",
    "avg_salary": "123879"
  },
  {
    "skills": "gcp",
    "avg_salary": "122500"
  },
  {
    "skills": "microstrategy",
    "avg_salary": "121619"
  }
]

/*














