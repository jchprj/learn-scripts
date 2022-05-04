#!/usr/bin/env kscript
// https://e.printstacktrace.blog/divide-a-list-to-lists-of-n-size-in-Java-8/
@file:DependsOn("com.google.guava:guava:31.1-jre")

import com.google.common.collect.Lists;
import java.util.Arrays;
import java.util.List;

val list = Arrays.asList(1, 2, 3, 4, 5)
val lists = Lists.partition(list, 2);
println(lists)