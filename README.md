# metric-converter

> This metric converter can work to perform transformations focused on distances (length) such as:
* kilometer (km)
* hectometer (hc)
* decameter (dc)
* meter (m)
* decimeter (dc)
* centimeter (cm)
* millimeter (ml)

## To use

> You must have a file `source-to-convert`, this can by <b>txt</b> where contains data separated by lines and commas (,) or bar (|) like
    <table>
    <tr><td>800,km,m</td></tr>
    <tr><td>150,m,dc</td></tr>
    <tr><td>150|m|ml</td></tr>
    </table>
Where m, dc, km and ml are meter, decameter, kilometer and millimeter. When you execute the program yo should get a new file with convertions with next estructure
    <table>
    <tr><td>800,km,m</td></tr>
    <tr><td>150,m,dc</td></tr>
    <tr><td>150|m|ml</td></tr>
    </table>
