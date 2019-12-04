# This file is generated by sync-deps, do not edit!
load("@rules_jvm_external//:defs.bzl", "maven_install")
load("@rules_jvm_external//:specs.bzl", "maven")

def default_install(artifacts, repositories, excluded_artifacts = [], version_conflict_policy = None, **kwargs):
    maven_install(
        artifacts = artifacts,
        fetch_sources = True,
        repositories = repositories,
        excluded_artifacts = excluded_artifacts,
        maven_install_json = "@spotify_bazel_tools//3rdparty:maven-install.json",
        version_conflict_policy = version_conflict_policy,
    )

def maven_dependencies(install=None):
    if install == None:
        install = default_install
    install(
        artifacts=[
            maven.artifact(group = "ch.qos.logback", artifact = "logback-classic", version = "1.2.3", neverlink = False),
            maven.artifact(group = "ch.qos.logback", artifact = "logback-core", version = "1.2.3", neverlink = False),
            maven.artifact(group = "com.fasterxml.jackson.core", artifact = "jackson-annotations", version = "2.9.6", neverlink = False),
            maven.artifact(group = "com.fasterxml.jackson.core", artifact = "jackson-core", version = "2.9.6", neverlink = False),
            maven.artifact(group = "com.fasterxml.jackson.core", artifact = "jackson-databind", version = "2.9.6", neverlink = False),
            maven.artifact(group = "com.fasterxml.jackson.dataformat", artifact = "jackson-dataformat-yaml", version = "2.9.6", neverlink = False),
            maven.artifact(group = "com.fasterxml.jackson.datatype", artifact = "jackson-datatype-guava", version = "2.9.6", neverlink = False),
            maven.artifact(group = "com.geirsson", artifact = "scalafmt-core_2.12", version = "1.5.1", neverlink = False),
            maven.artifact(group = "com.geirsson", artifact = "metaconfig-core_2.12", version = "0.4.0", neverlink = False),
            maven.artifact(group = "com.geirsson", artifact = "metaconfig-typesafe-config_2.12", version = "0.4.0", neverlink = False),
            maven.artifact(group = "com.github.tomas-langer", artifact = "chalk", version = "1.0.2", neverlink = False),
            maven.artifact(group = "com.google.auto.value", artifact = "auto-value", version = "1.6.2", neverlink = False),
            maven.artifact(group = "com.google.auto.value", artifact = "auto-value-annotations", version = "1.6.2", neverlink = False),
            maven.artifact(group = "com.google.code.findbugs", artifact = "annotations", version = "3.0.1", neverlink = False),
            maven.artifact(group = "com.google.code.findbugs", artifact = "jsr305", version = "3.0.2", neverlink = False),
            maven.artifact(group = "com.google.errorprone", artifact = "error_prone_annotations", version = "2.3.1", neverlink = False),
            maven.artifact(group = "com.google.googlejavaformat", artifact = "google-java-format", version = "1.6", neverlink = False),
            maven.artifact(group = "com.google.guava", artifact = "guava", version = "23.6.1-jre", neverlink = False),
            maven.artifact(group = "com.google.protobuf", artifact = "protobuf-java", version = "3.8.0", neverlink = False),
            maven.artifact(group = "com.google.jimfs", artifact = "jimfs", version = "1.1", neverlink = False),
            maven.artifact(group = "com.squareup.okio", artifact = "okio", version = "1.15.0", neverlink = False),
            maven.artifact(group = "net.sf.jopt-simple", artifact = "jopt-simple", version = "5.0.4", neverlink = False),
            maven.artifact(group = "org.hamcrest", artifact = "java-hamcrest", version = "2.0.0.0", neverlink = False),
            maven.artifact(group = "org.scala-lang", artifact = "scala-compiler", version = "2.12.6", neverlink = False),
            maven.artifact(group = "org.scala-lang", artifact = "scala-library", version = "2.12.6", neverlink = False),
            maven.artifact(group = "org.scala-lang", artifact = "scala-reflect", version = "2.12.6", neverlink = False),
            maven.artifact(group = "org.slf4j", artifact = "slf4j-api", version = "1.7.25", neverlink = False)
        ],
        repositories=[
            "https://repo.maven.apache.org/maven2/"
        ],
        excluded_artifacts=[
            maven.exclusion(group = "com.google.guava", artifact = "guava-jdk5"),
            maven.exclusion(group = "org.slf4j", artifact = "slf4j-log4j12")
        ],
        version_conflict_policy="pinned",
    )
