FROM maven:3.6.0-jdk-12-alpine

LABEL "name"="Maven CLI Action with JDK 12"
LABEL "maintainer"="Fabien LHEUREUX"
LABEL "version"="1.0.1"

LABEL "com.github.actions.name"="GitHub Action for Maven"
LABEL "com.github.actions.description"="Wraps the Maven CLI to enable Maven commands."
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="blue"
COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
