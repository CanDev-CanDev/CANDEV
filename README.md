# CANDEV

var obj = JSON.parse(txt);
document.getElementById("demo").innerHTML =obj.status

http://127.0.0.1:5000/getNearest/userloc=<string: location>&dept=<string: department>
```
{
    "status": 200,
    "addresses": [
        {
            "id": 4,
            "organization_addr": "100 Steeles Ave W, Thornhill, ON L4J 7Y1",
            "tel": "(905) 709-4097",
            "email": "gg@serviceOntario.ca",
            "open_hours": "Sunday:Closed Monday:9a.m.–5p.m. Tuesday:9a.m.–5p.m. Wednesday:9a.m.–5p.m. Thursday:9a.m.–7p.m. Friday:9a.m.–5p.m. Saturday:9a.m.–1p.m.",
            "web_links": "ontariolicences.com",
            "lable": "provincial"
        },
        {
            "id": 2,
            "organization_addr": "846 Dundas St W, Toronto, ON M6J 1V5",
            "tel": "+1 800-267-8097",
            "email": "gg@serviceOntario.ca",
            "open_hours": "Saturday:9a.m.–1p.m. Sunday:Closed Monday:9a.m.–5p.m. Monday:9a.m.–5p.m. Tuesday:9a.m.–5p.m. Wednesday:9a.m.–5p.m. Thursday:9a.m.–7p.m. Friday:9a.m.–5p.m.",
            "web_links": "ontario.ca",
            "lable": "provincial"
        },
        {
            "id": 1,
            "organization_addr": "2129 St Clair Ave W, Toronto, ON M6N 5B4",
            "tel": "(416) 653-8690",
            "email": "gg@serviceOntario.ca",
            "open_hours": "Saturday:9a.m.–1p.m. Sunday:Closed Monday:9a.m.–5p.m. Monday:9a.m.–5p.m. Tuesday:9a.m.–5p.m. Wednesday:9a.m.–5p.m. Thursday:9a.m.–7p.m. Friday:9a.m.–5p.m.",
            "web_links": "ontario.ca",
            "lable": "provincial"
        },
        {
            "id": 3,
            "organization_addr": "3300 Bloor St W Suite 142, Etobicoke, ON M8X 2W8",
            "tel": "+1 800-267-8097",
            "email": "gg@serviceOntario.ca",
            "open_hours": "Saturday:Closed Sunday:Closed Monday:8:30a.m.–5p.m. Tuesday:8:30a.m.–5p.m. Wednesday:8:30a.m.–5p.m. Thursday:8:30a.m.–5p.m. Friday:8:30a.m.–5p.m.",
            "web_links": "ontario.ca",
            "lable": "provincial"
        },
        {
            "id": 0,
            "organization_addr": "1255 The Queensway Unit16B, Etobicoke, ON M8Z 1S1",
            "tel": "(416) 251-4941",
            "email": "gg@serviceOntario.ca",
            "open_hours": "Saturday:9a.m.–1p.m. Sunday:Closed Monday:9a.m.–5p.m. Monday:9a.m.–5p.m. Tuesday:9a.m.–5p.m. Wednesday:9a.m.–5p.m. Thursday:9a.m.–7p.m. Friday:9a.m.–5p.m.",
            "web_links": "ontario.ca",
            "lable": "provincial"
        }
    ]
}
```
