
# Grafana

## Boom table

Here we see 4 very unique queries and how they are declared as unique columns

From <https://medium.com/@texasdave2/the-last-grafana-boom-table-plugin-tutorial-youll-ever-need-46d26f67c0f5> 

The “{{instance}}” text is _0_ index. The pipe is the delimiter. The text after the pipe is the next index _1_. Programmaticly it’s a genius way to do it, it’s just not that intuitive. The row name in this single element example is left at _1_. Can’t really explain why this works, just does. But the column name is the important thing! The column name has to be declared at _0_, the instance name, in order to have all of your instances appear in the row.

# Feature request

How to embedded other dashboards into one dashboard so that the one dashboard shows others' contents in place?

From <https://github.com/grafana/grafana/issues/2641> 


Added Y-Axis label mapping feature

From <https://github.com/grafana/grafana/pull/12609> 

