
## Syntax

[mysql - Performance differences between equal (=) and IN with one literal value - Stack Overflow](https://stackoverflow.com/questions/37828398/performance-differences-between-equal-and-in-with-one-literal-value)

    There is no difference between those two statements, and the optimiser will transform the IN to the = when IN has just one element in it.
    where t.identity_number in('123456789');
    where t.identity_number = '123456789'


## Unsupported

[MySQL :: Re: @@TRANCOUNT Equivalent in MySQL](https://forums.mysql.com/read.php?10,219104,219200#msg-219200)

    None of MySQL's storage engines support nested transactions.