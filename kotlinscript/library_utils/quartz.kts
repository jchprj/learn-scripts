#!/usr/bin/env kscript
// https://www.programcreek.com/java-api-examples/?api=org.quartz.CronTrigger
// https://www.programcreek.com/java-api-examples/?code=xaecbd%2FRCT%2FRCT-master%2FRCT-Dashboard%2Fsrc%2Fmain%2Fjava%2Forg%2Fnesc%2Fecbd%2Fservice%2FScheduleTaskService.java
// https://www.baeldung.com/quartz
// https://stackoverflow.com/questions/22163662/how-to-create-a-java-cron-job

@file:DependsOn("org.quartz-scheduler:quartz:2.2.2")

import java.time.LocalDateTime
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.quartz.CronExpression;
import org.quartz.CronScheduleBuilder;
import org.quartz.CronTrigger;
import org.quartz.Job;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.JobKey;
import org.quartz.JobDataMap;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.Trigger;
import org.quartz.Trigger.TriggerState;
import org.quartz.TriggerBuilder;
import org.quartz.TriggerKey;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.quartz.impl.StdSchedulerFactory;

val cron = "0/3 * * * * ?"
val s = getRecentTriggerTime(cron)
println(s)
startTask(cron)

fun getRecentTriggerTime(cron: String?): MutableList<String>? {
    println(cron)
    val list: MutableList<String> = ArrayList()
    if (!CronExpression.isValidExpression(cron)) {
        println("Invalid expression")
        return list
    }
    val cronTrigger: CronTrigger = TriggerBuilder.newTrigger().withIdentity("date")
        .withSchedule(CronScheduleBuilder.cronSchedule(cron)).build()
    val sdf = SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
    var startTime: Date? = cronTrigger.getStartTime()
    for (i in 0..4) {
        val time: Date = cronTrigger.getFireTimeAfter(startTime)
        list.add(sdf.format(time))
        startTime = time
    }
    return list
}

fun startTask(cronExpress: String?) {
    val jobDetail = JobBuilder.newJob(SimpleJob::class.java)
        .withIdentity("myJob", "group1")
        .usingJobData("jobSays", "Hello World!")
        .usingJobData("myFloatValue", 1.0f)
        .build()
    val cronTrigger = TriggerBuilder.newTrigger()
            .withIdentity("trigger1", "group1")
            .withSchedule(CronScheduleBuilder.cronSchedule(cronExpress))
            .forJob("myJob", "group1")
            .build();

    val schedFact = StdSchedulerFactory()
    val sched = schedFact.scheduler
    sched.scheduleJob(jobDetail, cronTrigger)
    sched.start()
}

class SimpleJob : Job {
    @Throws(JobExecutionException::class)
    override fun execute(context: JobExecutionContext) {
        val dataMap: JobDataMap = context.getJobDetail().getJobDataMap()
        val jobSays: String = dataMap.getString("jobSays")
        val myFloatValue: Float = dataMap.getFloat("myFloatValue")
        val current = LocalDateTime.now()
        println("$current Job says: $jobSays, and val is: $myFloatValue")
    }
}