<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${resPath}/css/jquery.Jcrop.min.css">
    <%@include file="/WEB-INF/pages/common/common.jsp"%>
    <script type="text/javascript" src="${resPath}/js/d3.min.js"></script>
</head>

<style>

    .node circle {
        fill: #999;
    }

    .node text {
        font: 16px sans-serif;
    }

    .node--internal circle {
        fill: #555;
    }

    .node--internal text {
        text-shadow: 0 1px 0 #fff, 0 -1px 0 #fff, 1px 0 0 #fff, -1px 0 0 #fff;
    }

    .link {
        fill: none;
        stroke: #555;
        stroke-opacity: 0.4;
        stroke-width: 1.5px;
    }
</style>

<body>


<svg class="chart" width="1080" height="720">

</svg>


</body>

<script type="text/javascript">

    var svg = d3.select("svg"),
        width = +svg.attr("width"),
        height = +svg.attr("height"),
        g = svg.append("g").attr("transform", "translate(" + (width / 2 + 10) + "," + (height / 2 + 10) + ")");

    var stratify = d3.stratify()
        .parentId(function(d) { return d.id.substring(0, d.id.lastIndexOf(".")); });

    var tree = d3.tree()
        .size([2 * Math.PI, 200])
        .separation(function(a, b) { return (a.parent == b.parent ? 1 : 2) / a.depth; });

    d3.csv(resPath+"/data/csv/java.csv?"+new Date(), function(error, data) {
        if (error) throw error;

        var root = tree(stratify(data));
        console.log(stratify(data));

        var link = g.selectAll(".link")
            .data(root.links())
            .enter().append("path")
            .attr("class", "link")
            .attr("d", d3.linkRadial()
                .angle(function(d) { return d.x; })
                .radius(function(d) { return d.y; }));

        var node = g.selectAll(".node")
            .data(root.descendants())
            .enter().append("g")
            .attr("class", function(d) { return "node" + (d.children ? " node--internal" : " node--leaf"); })
            .attr("transform", function(d) { return "translate(" + radialPoint(d.x, d.y) + ")"; });

        node.append("circle")
            .attr("r", 2.5);

        node.append("text")
            .attr("dy", "0.31em")
            .attr("x", function(d) { return d.x < Math.PI === !d.children ? 6 : -6; })
            .attr("text-anchor", function(d) { return d.x < Math.PI === !d.children ? "start" : "end"; })
            .attr("transform", function(d) { return "rotate(" + (d.x < Math.PI ? d.x - Math.PI / 2 : d.x + Math.PI / 2) * 180 / Math.PI + ")"; })
            .text(function(d) { return d.id.substring(d.id.lastIndexOf(".") + 1); });
    });

    function radialPoint(x, y) {
        return [(y = +y) * Math.cos(x -= Math.PI / 2), y * Math.sin(x)];
    }
</script>
</html>
