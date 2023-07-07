# CI CD Pipeline (Task-5)
Create a CI-CD pipeline for a sample application using any CI-CD tool of your choice like Jenkins, Azure DevOps, Gitlab, Github Actions, AWS CodePipeline or any other tool of your choice. Include a code build and a docker build step in your pipeline.
## TOOLS USED:
- Github, Docker Desktop.
- cloned a repository java rest api application (task-1) on GitHub.
- Created a Dockerfile for the application that includes all the dependencies and packages needed to run the application.
- Created a new workflow java using maven .github/workflows directory in repository and added a maven.yaml file inside it. Added the workflow in the maven.yaml file.
- This includes specifying the trigger events, jobs, and steps! Defined a job for the code build step in the workflow. This includes checking out the source code, installing dependencies, and running tests.
- Work flows :> https://github.com/MunwarAli12/ASLICICD/actions
-  ![image](https://github.com/MunwarAli12/ASLICICD/assets/126280146/95939bb3-df4c-4e90-a5da-ed2fd96600a0)
-  ![image](https://github.com/MunwarAli12/ASLICICD/assets/126280146/66516aaa-90e1-46dd-b3fd-2c0a4ad6373b)
-  ![image](https://github.com/MunwarAli12/ASLICICD/assets/126280146/355893ca-f8d9-4031-a2b7-3640d31003bc)


-  ![image](https://github.com/MunwarAli12/ASLICICD/assets/126280146/ae89e6ea-33d1-45fa-bf56-4be6b4875646)

- Defined a job for the Docker build step in the workflow. This includes building a Docker image, tagging it, and pushing it to a Docker registry and configured the necessary environment variables, such as the Docker hub registry login credentials.
- ![image](https://github.com/MunwarAli12/ASLICICD/assets/126280146/37873305-3d4f-4fca-9325-b0ef09bd2f82)

- After that, the deployed image is downloaded and used in the target environment and runned via local host at post 8080. where we taken basic spring boot java maven built appplication.
- A continuous integration and continuous deployment (CI/CD) pipeline is used throughout this process to automate the creation and deployment of code. Code changes set off the pipeline, which makes sure that they are tested, built, and delivered in a repeatable and dependable manner.


## Result,
- As a result, established a CI-CD pipeline for a spring boot application built using Maven and use the CI-CD tool Github Actions. The pipeline now includes a code build and a docker build step.
