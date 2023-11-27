create_resume <- function(name, title, description, history, highlights, education, links, contact) {
  list(
    name = name,
    title = title,
    description = description,
    history = history,
    highlights = highlights,
    education = education,
    links = links,
    contact = contact
  )
}

display_resume <- function(resume) {
  cat("-----------------------------------------------", "\n")
  cat("Name:", resume$name, "\n")
  cat("Title:", resume$title, "\n")
  cat("-----------------------------------------------", "\n\n")
  
  cat("Description:", "\n")
  cat(resume$description, "\n\n")
  
  cat("Professional History:")
  for (company_info in resume$history) {
    cat("\nCompany:", company_info$company, "\n")
    cat("Role:", company_info$role, "\n")
    cat("Duration:", company_info$duration, "\n")
    cat("Achievements:\n")
    for (achievement in company_info$achievements) {
      cat("  -", achievement, "\n")
    }
    cat("More Info:", company_info$link, "\n")
  }
  
  cat("\nHighlights:\n")
  for (category in names(resume$highlights)) {
    cat(category, ":", paste(resume$highlights[[category]], collapse = ", "), "\n\n")
  }
  
  cat("Education:\n")
  for (degree in resume$education) {
    cat("  -", degree, "\n")
  }
  
  cat("\nLinks:\n")
  for (platform in names(resume$links)) {
    cat(platform, ":", resume$links[[platform]], "\n")
  }
  
  cat("\nContact Information:\n")
  for (method in names(resume$contact)) {
    cat(method, ":", resume$contact[[method]], "\n")
  }
}

# Example of creating and displaying a resume in R
jonathan_resume <- create_resume(
  name = "Jonathan Schlosser",
  title = "Senior Data Scientist | Data Educator | Mentor",
  description = "Jonathan is a Senior Data Scientist at Nielsen, a Computational Social Scientist at UNC Chapel Hill, and a Data Educator with Correlation One. He has been working in data fields for over a decade and has extensive experience in media, social media, and technology domains. His data skillsets lie in the realms of Natural Language Processing, Machine Learning, and Deep Learning, with recent work in LLMs and Generative AI.",
  history = list(
    list(
      company = "Nielsen",
      role = "Senior Data Scientist - Audience Measurement",
      duration = "September 2021 – Present",
      achievements = c(
        "Automated and standardized A/B testing and credit analyses as a core method in team analysis.",
        "Led tests and developed key tools to enhance Nielsen's data accuracy to second-level granularity.",
        "Improved and standardized the analysis methodologies used to test new personal meter technology.",
        "Advanced Nielsen's meter fault detection using machine learning and real-time data analysis."
      ),
      link = "https://www.nielsen.com/solutions/audience-measurement/#audience-measurement"
    ),
    list(
      company = "Correlation One",
      role = "Lead Instructor & Technical Coach - Data Science, Machine Learning, and Data Engineering",
      duration = "2021 – Present",
      achievements = c(
        "Trained 300+ junior data professionals in data science skills and concepts in Python and SQL.",
        "Guided 80+ fellows through learning and applying data engineering concepts in 16+ data engineering projects.",
        "Led lecture sessions to 1800+ data professionals on data science and machine learning in Python.",
        "Recognized as a top instructor with one of the longest tenures."
      ),
      link = "https://www.correlation-one.com/"
    ),
    list(
      company = "UNC Odum Institute For Research In Social Science",
      role = "Help Desk Consultant - Data Science & Statistics",
      duration = "2020–2021",
      achievements = c(
        "Consulted on 150+ industry and research projects for graduate students and faculty at UNC Chapel Hill.",
        "Specialized in inferential statistics, data science, and machine learning approaches in R, Python, and SPSS.",
        "Recognized as a top statistics consultant and featured in a spotlight article."
      ),
      link = "https://odum.unc.edu/"
    ),
    list(
      company = "National Consortium Of Data Science",
      role = "Teaching Assistant - Data Science, Machine Learning, & Deep Learning",
      duration = "2019–2021",
      achievements = c(
        "Assisted with multiple courses on Python, Machine Learning, and Deep Learning to 50+ course participants.",
        "Recognized as a top teaching assistant and was preferentially chosen for the most challenging courses."
      ),
      link = "https://datascienceconsortium.org/"
    )
  ),
  highlights = list(
    Languages = c("SQL", "Python", "R"),
    KnowledgeAreas = c(
      "Data Science", "Statistics", "Machine Learning", "Deep Learning", 
      "Natural Language Processing", "Data Engineering", 
      "Large Language Models", "Generative AI"
    ),
    DataScienceAndML = c(
      "Pandas/Numpy", "Matplotlib", "Scikit-Learn", "NLTK", "Seaborn", 
      "Plotly", "TensorFlow", "Keras", "PyTorch", "HuggingFace", 
      "Streamlit", "LangChain", "OpenAI API"
    ),
    Programming = c(
      "Linux", "HTML/CSS", "Git/GitHub/GitLab", "VSCode", "CLI", 
      "Tableau", "JupyterLab/Notebooks", "Pip", "MySQL", 
      "SQLAlchemy", "PostgreSQL", "Flask", "Streamlit"
    ),
    CloudAndDevOps = c(
      "HTTP", "AWS (EC2, S3, RDS, Lambda, SageMaker, Redshift)", 
      "Google Cloud/Colab", "Docker", "Databricks", "Flask", 
      "Spark/PySpark/Spark SQL", "Presto/Trino", "Airflow"
    )
  ),
  education = c(
    "PhD, Media and Communication from UNC Chapel Hill, In Progress",
    "MSc, Environment and Development from Lancaster University, 2016",
    "BS, Environmental Science from Binghamton University, 2014"
  ),
  links = list(
    LinkedIn = "https://www.linkedin.com/in/jonathanphilipschlosser/",
    GitHub = "https://github.com/JPSchloss",
    Website = "https://www.jonathanschlosser.com/"
  ),
  contact = list(
    Email = "REDACTED",
    Phone = "REDACTED"
  )
)

# Display the resume
display_resume(jonathan_resume)
