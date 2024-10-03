# Jenkins Pipeline for Nodejs based application using SonarQube, Argo CD, Helm and Kubernetes

![Screenshot 2023-03-28 at 9 38 09 PM](https://user-images.githubusercontent.com/43399466/228301952-abc02ca2-9942-4a67-8293-f76647b6f9d8.png)


Here are the step-by-step details to set up an end-to-end Jenkins pipeline for a Node application using SonarQube, Argo CD, Helm, and Kubernetes:

Prerequisites:

   -  Node application code hosted on a Git repository
   -   Jenkins server
   -  Kubernetes cluster
   -  Helm package manager
   -  Argo CD

Steps:

    1. Install the necessary Jenkins plugins:
       1.1 Git plugin
       1.2 Maven Integration plugin
       1.3 Pipeline plugin
       1.4 Kubernetes Continuous Deploy plugin

    2. Create a new Jenkins pipeline:
       2.1 In Jenkins, create a new pipeline job and configure it with the Git repository URL for the Node application.
       2.2 Add a Jenkinsfile to the Git repository to define the pipeline stages.

    3. Define the pipeline stages:
        Stage 1: Checkout the source code from Git.
        Stage 2: Build the Node application.
        Stage 3: Run unit tests.
        Stage 4: Run SonarQube analysis to check the code quality.
        Stage 5: Deploy the application to a test environment using Helm.
        Stage 6: Promote the application to a production environment using Argo CD.

    4. Configure Jenkins pipeline stages:
        Stage 1: Use the Git plugin to check out the source code from the Git repository.
        Stage 2: Build the Node application.
        Stage 3: Run unit tests.
        Stage 4: Use the SonarQube plugin to analyze the code quality of the Node application.
        Stage 5: Use the Kubernetes Continuous Deploy plugin to deploy the application to a test environment using Helm.
        Stage 6: Use Argo CD to promote the application to a production environment.

    5. Set up Argo CD:
        Install Argo CD on the Kubernetes cluster.
        Set up a Git repository for Argo CD to track the changes in the Helm charts and Kubernetes manifests.
        Create a Helm chart for the Java application that includes the Kubernetes manifests and Helm values.
        Add the Helm chart to the Git repository that Argo CD is tracking.

    6. Configure Jenkins pipeline to integrate with Argo CD:
       6.1 Add the Argo CD API token to Jenkins credentials.
       6.2 Update the Jenkins pipeline to include the Argo CD deployment stage.

    7. Run the Jenkins pipeline:
       7.1 Trigger the Jenkins pipeline to start the CI/CD process for the Node application.
       7.2 Monitor the pipeline stages and fix any issues that arise.

This end-to-end Jenkins pipeline will automate the entire CI/CD process for a Node application, from code checkout to production deployment, using popular tools like SonarQube, Argo CD, Helm, and Kubernetes.

## Reference link: 
* https://github.com/wangoimwangi/jenkins-CICD/blob/main/README.md
* https://medium.com/devops-dev/building-an-end-to-end-ci-cd-pipeline-with-jenkins-7ef2205d7988
* https://medium.com/devops-dev/comprehensive-devops-implementation-project-b5ae52c2bbfa
++Note:
  - to fix permission denied error when running Jenkinsfile: run `sudo usermod -aG docker jenkins` then `sudo systemctl restart jenkins`.
