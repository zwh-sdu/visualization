document.addEventListener('DOMContentLoaded',function(){
    req=new XMLHttpRequest();
    req.open("GET",'https://raw.githubusercontent.com/no-stack-dub-sack/testable-projects-fcc/master/src/data/choropleth_map/for_user_education.json',true);
    req.send();
    req.onload=function(){
      //Education attainment data
      json=JSON.parse(req.responseText);
   
    var svg = d3.select("svg");
    var path = d3.geoPath();
  
  d3.json("https://raw.githubusercontent.com/no-stack-dub-sack/testable-projects-fcc/master/src/data/choropleth_map/counties.json", function(error, us) {
    if (error) throw error;  
    
    //Make the counties
   svg.append("g")
      .attr("class", "county")
      .selectAll("path")
      .data(topojson.feature(us, us.objects.counties).features)
      .enter().append("path")
      .attr("d", path)
      .style('fill', (d) => {
                   return ("rgba(12, 81, 0, .3)")
            }//end for loop that checks for matching county IDs
          //end of loop through ALL json data
       )//end style - fill
    
   //Make the county borders
   svg.append("path")
      .attr("class", "county-borders")
      .attr("d", path(topojson.mesh(us, us.objects.counties, function(a, b) { return a !== b; })));
   //Make the state borders
   svg.append("path")
       .attr("class", "state-borders")
       .attr("d", path(topojson.mesh(us, us.objects.states, function(a, b) { return a !== b; })));
  }); //end d3.json from line 14
      
  }})

