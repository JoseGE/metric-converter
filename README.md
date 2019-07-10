# metric-converter

> This metric converter can work to perform transformations focused on distances (length) such as:
* kilometer (km)
* meter (m)
* centimeter (cm)
* inch (in)
* feet (ft)
* mile (mi)

## Basic

You need have installed dart enviroment, get from https://dart.dev/


## How to use
command: `dart bin/main.dart` and input your file path
> You must have a file `source-to-convert`, this can only by <b>txt</b> file, where contains data separated by lines and commas (,) or bar (|) like
    <table>
    <tr><td>800 , km , m</td></tr>
    <tr><td>150 , m , in</td></tr>
    <tr><td>150 | m | mi </td></tr>
    </table>
Where m, dc, km and ml are meter, decameter, kilometer and millimeter. When you execute the program yo should get a new file with convertions with next estructure
    <table>
    <tr><td>800 , km , m</td></tr>
    <tr><td>150 , m , in</td></tr>
    <tr><td>150 | m | mi</td></tr>
    </table> 
