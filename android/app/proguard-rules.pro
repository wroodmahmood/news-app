# Keep SLF4J classes
-keep class org.slf4j.** { *; }
-keep interface org.slf4j.** { *; }

# Prevent optimization for logging classes
-dontwarn org.slf4j.**
-dontwarn ch.qos.logback.**
-keep class jakarta.servlet.** { *; }
-keep class java.lang.Module { *; }
-keep class java.lang.module.ModuleDescriptor { *; }
-dontwarn jakarta.servlet.**
-dontwarn java.lang.Module
-dontwarn java.lang.module.ModuleDescriptor
