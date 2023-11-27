class Resume:
    def __init__(self, name, title, description, history, highlights, education, links, contact):
        self.name = name
        self.title = title
        self.description = description
        self.history = history
        self.highlights = highlights
        self.education = education
        self.links = links
        self.contact = contact

    def display(self):
        print("-----------------------------------------------")
        print(f"Name: {self.name}")
        print(f"Title: {self.title}")
        print("-----------------------------------------------")
        print(f"\nDescription: {self.description}")

        print("\nProfessional History:")
        for company_info in self.history:
            print(f"\nCompany: {company_info['company']}")
            print(f"Role: {company_info['role']}")
            print(f"Duration: {company_info['duration']}")
            print("Achievements:")
            for achievement in company_info['achievements']:
                print(f"  - {achievement}")
            print(f"More Info: {company_info['link']}")

        print("\nHighlights:")
        for category, items in self.highlights.items():
            print(f"{category}: {', '.join(items)}")

        print("\nEducation:")
        for degree in self.education:
            print(f"  - {degree}")

        print("\nLinks:")
        for platform, url in self.links.items():
            print(f"{platform}: {url}")

        print("\nContact Information:")
        for method, info in self.contact.items():
            print(f"{method}: {info}")

jonathan_resume = Resume(
    name="Jonathan Schlosser",
    title="Senior Data Scientist | Data Educator | Mentor",
    description="Jonathan is a Senior Data Scientist at Nielsen, a Computational Social Scientist at UNC Chapel Hill, and a Data Educator with Correlation One. He has been working in data fields for over a decade and has extensive experience in media, social media, and technology domains. His data skillsets lie in the realms of Natural Language Processing, Machine Learning, and Deep Learning, with recent work in LLMs and Generative AI.",
    history=[
        {
            "company": "Nielsen",
            "role": "Senior Data Scientist - Audience Measurement",
            "duration": "September 2021 – Present",
            "achievements": [
                "Automated and standardized A/B testing and credit analyses as a core method in team analysis.",
                "Led tests and developed key tools to enhance Nielsen's data accuracy to second-level granularity.",
                "Improved and standardized the analysis methodologies used to test new personal meter technology.",
                "Advanced Nielsen's meter fault detection using machine learning and real-time data analysis."
            ],
            "link": "https://www.nielsen.com/solutions/audience-measurement/#audience-measurement"
        },
        {
            "company": "Correlation One",
            "role": "Lead Instructor & Technical Coach - Data Science, Machine Learning, and Data Engineering",
            "duration": "2021 – Present",
            "achievements": [
                "Trained 300+ junior data professionals in data science skills and concepts in Python and SQL.",
                "Guided 80+ fellows through learning and applying data engineering concepts in 16+ data engineering projects.",
                "Led lecture sessions to 1800+ data professionals on data science and machine learning in Python.",
                "Recognized as a top instructor with one of the longest tenures."
            ],
            "link": "https://www.correlation-one.com/"
        },
        {
            "company": "UNC Odum Institute For Research In Social Science",
            "role": "Help Desk Consultant - Data Science & Statistics",
            "duration": "2020–2021",
            "achievements": [
                "Consulted on 150+ industry and research projects for graduate students and faculty at UNC Chapel Hill.",
                "Specialized in inferential statistics, data science, and machine learning approaches in R, Python, and SPSS.",
                "Recognized as a top statistics consultant and featured in a spotlight article."
            ],
            "link": "https://odum.unc.edu/"
        },
        {
            "company": "National Consortium Of Data Science",
            "role": "Teaching Assistant - Data Science, Machine Learning, & Deep Learning",
            "duration": "2019–2021",
            "achievements": [
                "Assisted with multiple courses on Python, Machine Learning, and Deep Learning to 50+ course participants.",
                "Recognized as a top teaching assistant and was preferentially chosen for the most challenging courses."
            ],
            "link": "https://datascienceconsortium.org/"
        }
    ],
    highlights={
        "Languages": ["SQL", "Python", "R"],
        "Knowledge Areas": [
            "Data Science", "Statistics", "Machine Learning", "Deep Learning", 
            "Natural Language Processing", "Data Engineering", 
            "Large Language Models", "Generative AI"
        ],
        "Data Science and Machine Learning": [
            "Pandas/Numpy", "Matplotlib", "Scikit-Learn", "NLTK", "Seaborn", 
            "Plotly", "TensorFlow", "Keras", "PyTorch", "HuggingFace", 
            "Streamlit", "LangChain", "OpenAI API"
        ],
        "Programming": [
            "Linux", "HTML/CSS", "Git/GitHub/GitLab", "VSCode", "CLI", 
            "Tableau", "JupyterLab/Notebooks", "Pip", "MySQL", 
            "SQLAlchemy", "PostgreSQL", "Flask", "Streamlit"
        ],
        "Cloud and DevOps": [
            "HTTP", "AWS (EC2, S3, RDS, Lambda, SageMaker, Redshift)", 
            "Google Cloud/Colab", "Docker", "Databricks", "Flask", 
            "Spark/PySpark/Spark SQL", "Presto/Trino", "Airflow"
        ]
    },
    education=[
        "PhD, Media and Communication from UNC Chapel Hill, In Progress",
        "MSc, Environment and Development from Lancaster University, 2016",
        "BS, Environmental Science from Binghamton University, 2014"
    ],
    links={
        "LinkedIn": "https://www.linkedin.com/in/jonathanphilipschlosser/",
        "GitHub": "https://github.com/JPSchloss",
        "Website": "https://www.jonathanschlosser.com/"
    },
    contact={
        "Email": "REDACTED",
        "Phone": "REDACTED"
    }
)

# Display the resume
jonathan_resume.display()