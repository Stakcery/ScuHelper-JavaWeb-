function CourseTable(){};

//课表表头布局
function courseTableHeadLayout(sectionObj, flag, firstday) {
    var xqName = ["星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"];
    if (flag == "j") {
        xqName = ["一", "二", "三", "四", "五", "六", "日"];
    }
    var courseTableHeadCont = "";
    if($("#param_value").val() == "100014"){
        courseTableHeadCont = "<th colspan='2'>节次</th><th>丁字沽</th><th>北辰</th>";
    }else{
        courseTableHeadCont = "<th colspan='3'>节次/时间</th>";
    }
    if($("#param_value").val() == "100004"){
        var courseTableHeadCont = "<th colspan='2' style='text-align: center;' >节次/时间</th>";
    }
    if($("#param_value").val() == "100006"){
        courseTableHeadCont = "<th colspan='2'>节次</th>";
    }
    for ( var h = 1; h <= sectionObj.zts; h++) {
        if (firstday==7) {
            if(h == 1) {
                courseTableHeadCont += "<th>" + xqName[firstday-1] + "</th>";
            } else {
                courseTableHeadCont += "<th>" + xqName[h-2] + "</th>";
            }
        } else {
            courseTableHeadCont += "<th>" + xqName[h-1] + "</th>";
        }
    }
    return courseTableHeadCont;
}
function courseTableBodyLayoutNMGMZ(objid,sectionObj, flag, tt, firstday){
    var startSize = "";
    var endSize = "";
    var courseTableBodyCont = "";
    var jcsjw = "150px";
    var color = "";
    if(tt=="j"){
        jcsjw = "5px";
    }
    switch (flag) {
        case "sw":
            color = "rgba(207,255,228,0.7)";
            startSize = 1;
            endSize = sectionObj.swjc;
            courseTableBodyCont += "<tr><th rowspan='"+sectionObj.swjc+"' style='vertical-align:middle;width:5px;background-color:"+color+";'>上<br>午</th>";
            break;
        case "xw":
            color = "rgba(255,230,207,0.7)";
            startSize = sectionObj.swjc + 1;
            endSize = sectionObj.swjc + sectionObj.xwjc;
            courseTableBodyCont += "<tr><th rowspan='"+sectionObj.xwjc+"' style='vertical-align:middle;width:5px;background-color:"+color+";'>下<br>午</th>";
            break;
        case "ws":
            color = "rgba(207,228,255,0.7)";
            startSize = sectionObj.swjc + sectionObj.xwjc + 1;
            endSize = sectionObj.swjc + sectionObj.xwjc + sectionObj.wsjc;
            courseTableBodyCont += "<tr><th rowspan='"+sectionObj.wsjc+"' style='vertical-align:middle;width:5px;background-color:"+color+";'>晚<br>上</th>";
            break;
    }
    if(objid == "rawMycoursetable"){
        for ( var i = startSize; i <= endSize; i++) {
            if (i != startSize) {
                courseTableBodyCont += "<tr>";
            }
            if(i % 2 == 1){
                for ( var j = 0; j <= sectionObj.zts; j++) {
                    if (j == 0) {
                        courseTableBodyCont += "<th style='vertical-align:middle;width:"+jcsjw+";background-color:"+color+";text-align:center;' id='raw"+j+"_"+i+"'></th>";
                    } else {
                        if (firstday == 7) {
                            if (j == 1) {
                                courseTableBodyCont += "<td style='vertical-align:middle;padding:0;background-color:"+color+";' id='raw"+firstday+"_"+i+"'></td>";
                            } else {
                                courseTableBodyCont += "<td style='vertical-align:middle;padding:0;background-color:"+color+";' id='raw"+(j-1)+"_"+i+"'></td>";
                            }
                        } else {
                            courseTableBodyCont += "<td style='vertical-align:top;padding:0;background-color:"+color+";' id='raw"+j+"_"+i+"'></td>";
                        }
                    }
                }
            }
            courseTableBodyCont += "</tr>";
        }
    }else{
        for ( var i = startSize; i <= endSize; i++) {
            if (i != startSize) {
                courseTableBodyCont += "<tr>";
            }
            if(i % 2 == 1){
                for ( var j = 0; j <= sectionObj.zts; j++) {
                    if (j == 0) {
                        courseTableBodyCont += "<th style='vertical-align:middle;width:"+jcsjw+";background-color:"+color+";text-align:center;' id='"+j+"_"+i+"'></th>";
                    } else {
                        if (firstday == 7) {
                            if (j == 1) {
                                courseTableBodyCont += "<td style='vertical-align:middle;padding:0;background-color:"+color+";' id='"+firstday+"_"+i+"'></td>";
                            } else {
                                courseTableBodyCont += "<td style='vertical-align:middle;padding:0;background-color:"+color+";' id='"+(j-1)+"_"+i+"'></td>";
                            }
                        } else {
                            courseTableBodyCont += "<td style='vertical-align:top;padding:0;background-color:"+color+";' id='"+j+"_"+i+"'></td>";
                        }
                    }
                }
            }
            courseTableBodyCont += "</tr>";
        }


    }
    return courseTableBodyCont;

}

//课表表体布局
function courseTableBodyLayout(sectionObj, flag, tt, firstday) {
    var startSize = "";
    var endSize = "";
    var courseTableBodyCont = "";
    var jcsjw = "150px";
    var color = "";
    if(tt=="j"){
        jcsjw = "5px";
    }
    if($("#param_value").val() == "100014"){
        switch (flag) {
            case "sw":
                color = "rgba(207,255,228,0.7)";
                startSize = 1;
                endSize = sectionObj.swjc;
                courseTableBodyCont += "<tr><th rowspan='"+sectionObj.swjc+"' style='vertical-align:middle;width:5px;background-color:"+color+";'>上<br>午</th>";
                for(var i = startSize; i <= endSize; i++){
                    if(i == 1){
                        courseTableBodyCont += "<th rowspan='2' style='vertical-align:middle;width:5px;background-color:"+color+";'>第<br>一<br>大<br>节</th>";
                    }else if(i == 3){
                        courseTableBodyCont += "<tr><th rowspan='2' style='vertical-align:middle;width:5px;background-color:"+color+";'>第<br>二<br>大<br>节</th>";
                    }else{
                        courseTableBodyCont += "<tr>";
                    }
                    for(var j = 0; j <= 7; j++){
                        if (j == 0) {
                            courseTableBodyCont += "<th style='vertical-align:middle;width:100px;background-color:"+color+";' id='"+j+"_"+i+"_1'></th>";
                            courseTableBodyCont += "<th style='vertical-align:middle;width:100px;background-color:"+color+";' id='"+j+"_"+i+"_2'></th>";
                        } else {
                            courseTableBodyCont += "<td style='vertical-align:middle;padding:0;height:45px !important;background-color:"+color+";' id='"+j+"_"+i+"'></td>";
                        }
                    }
                    courseTableBodyCont += "</tr>";
                }
                break;
            case "xw":
                color = "rgba(255,230,207,0.7)";
                startSize = sectionObj.swjc + 1;
                endSize = sectionObj.swjc + sectionObj.xwjc;
                courseTableBodyCont += "<tr><th rowspan='"+sectionObj.xwjc+"' style='vertical-align:middle;width:5px;background-color:"+color+";'>下<br>午</th>";
                for(var i = startSize; i <= endSize; i++){
                    if(i == 5){
                        courseTableBodyCont += "<th rowspan='2' style='vertical-align:middle;width:5px;background-color:"+color+";'>第<br>三<br>大<br>节</th>";
                    }else if(i == 7){
                        courseTableBodyCont += "<tr><th rowspan='2' style='vertical-align:middle;width:5px;background-color:"+color+";'>第<br>四<br>大<br>节</th>";
                    }else{
                        courseTableBodyCont += "<tr>";
                    }
                    for(var j = 0; j <= 7; j++){
                        if (j == 0) {
                            courseTableBodyCont += "<th style='vertical-align:middle;width:100px;background-color:"+color+";' id='"+j+"_"+i+"_1'></th>";
                            courseTableBodyCont += "<th style='vertical-align:middle;width:100px;background-color:"+color+";' id='"+j+"_"+i+"_2'></th>";
                        } else {
                            courseTableBodyCont += "<td style='vertical-align:middle;padding:0;height:45px !important;background-color:"+color+";' id='"+j+"_"+i+"'></td>";
                        }
                    }
                    courseTableBodyCont += "</tr>";
                }
                break;
            case "ws":
                color = "rgba(207,228,255,0.7)";
                startSize = sectionObj.swjc + sectionObj.xwjc + 1;
                endSize = sectionObj.swjc + sectionObj.xwjc + sectionObj.wsjc;
                courseTableBodyCont += "<tr><th rowspan='"+sectionObj.wsjc+"' style='vertical-align:middle;width:5px;background-color:"+color+";'>晚<br>上</th>";
                for(var i = startSize; i <= endSize; i++){
                    if(i == 9){
                        courseTableBodyCont += "<th rowspan='3' style='vertical-align:middle;width:5px;background-color:"+color+";'>第<br>五<br>大<br>节</th>";
                    }else{
                        courseTableBodyCont += "<tr>";
                    }
                    for(var j = 0; j <= 7; j++){
                        if (j == 0) {
                            courseTableBodyCont += "<th style='vertical-align:middle;width:100px;background-color:"+color+";' id='"+j+"_"+i+"_1'></th>";
                            courseTableBodyCont += "<th style='vertical-align:middle;width:100px;background-color:"+color+";' id='"+j+"_"+i+"_2'></th>";
                        } else {
                            courseTableBodyCont += "<td style='vertical-align:middle;padding:0;height:45px !important;background-color:"+color+";' id='"+j+"_"+i+"'></td>";
                        }
                    }
                    courseTableBodyCont += "</tr>";
                }
                break;
        }
    }else{
        switch (flag) {
            case "sw":
                color = "rgba(207,255,228,0.7)";
                startSize = 1;
                endSize = sectionObj.swjc;
                courseTableBodyCont += "<tr><th rowspan='"+sectionObj.swjc+"' style='vertical-align:middle;width:5px;background-color:"+color+";'>上<br>午</th>";
                break;
            case "xw":
                color = "rgba(255,230,207,0.7)";
                startSize = sectionObj.swjc + 1;
                endSize = sectionObj.swjc + sectionObj.xwjc;
                courseTableBodyCont += "<tr><th rowspan='"+sectionObj.xwjc+"' style='vertical-align:middle;width:5px;background-color:"+color+";'>下<br>午</th>";
                break;
            case "ws":
                color = "rgba(207,228,255,0.7)";
                startSize = sectionObj.swjc + sectionObj.xwjc + 1;
                endSize = sectionObj.swjc + sectionObj.xwjc + sectionObj.wsjc;
                courseTableBodyCont += "<tr><th rowspan='"+sectionObj.wsjc+"' style='vertical-align:middle;width:5px;background-color:"+color+";'>晚<br>上</th>";
                break;
        }
        for ( var i = startSize; i <= endSize; i++) {
            if (i != startSize) {
                courseTableBodyCont += "<tr>";
            }
            for ( var j = 0; j <= sectionObj.zts; j++) {
                if (j == 0) {
                    courseTableBodyCont += "<th style='vertical-align:middle;width:"+jcsjw+";background-color:"+color+";text-align:center;' id='dj_"+j+"_"+i+"'></th>";
                    courseTableBodyCont += "<th style='vertical-align:middle;width:"+jcsjw+";background-color:"+color+";' id='"+j+"_"+i+"'></th>";
                } else {
                    if (firstday == 7) {
                        if (j == 1) {
                            courseTableBodyCont += "<td style='vertical-align:middle;padding:0;height:45px !important;background-color:"+color+";' id='"+firstday+"_"+i+"'></td>";
                        } else {
                            courseTableBodyCont += "<td style='vertical-align:middle;padding:0;height:45px !important;background-color:"+color+";' id='"+(j-1)+"_"+i+"'></td>";
                        }
                    } else {
                        courseTableBodyCont += "<td style='vertical-align:middle;padding:0;height:45px !important;background-color:"+color+";' id='"+j+"_"+i+"'></td>";
                    }
                }
            }
            courseTableBodyCont += "</tr>";
        }

    }

    return courseTableBodyCont;
}

//课表时间节次
function fillSectionTime(sectionTimeObj) {
    if($("#param_value").val() == "100006"){
        $.each(sectionTimeObj, function (index, value) {
            var id = "0_" + value.id.session;
            var jcsj = "";
            if (value.sessionName.indexOf("第") != 0) {
                jcsj += "第";
            }
            jcsj += value.sessionName;
            if (value.sessionName.lastIndexOf("节") != (value.sessionName.length - 1)) {
                jcsj += "节";
            }
            $("#" + id).html(jcsj);
        });
    }else if($("#param_value").val() == "100014"){
        $("#0_1_1").html("第一小节<br>8:20~9:05<br>&nbsp;");
        $("#0_1_2").html("第一小节<br>8:30~9:15<br>&nbsp;");

        $("#0_2_1").html("第二小节<br>9:10~9:55<br>&nbsp;");
        $("#0_2_2").html("第二小节<br>9:20~10:05<br>&nbsp;");

        $("#0_3_1").html("第三小节<br>10:25~11:10<br>&nbsp;");
        $("#0_3_2").html("第三小节<br>10:25~11:10<br>&nbsp;");

        $("#0_4_1").html("第四小节<br>11:15~12:00<br>&nbsp;");
        $("#0_4_2").html("第四小节<br>11:15~12:00<br>&nbsp;");

        $("#0_5_1").html("第五小节<br>14:00~14:45<br>&nbsp;");
        $("#0_5_2").html("第五小节<br>14:00~14:45<br>&nbsp;");

        $("#0_6_1").html("第六小节<br>14:50~15:35<br>&nbsp;");
        $("#0_6_2").html("第六小节<br>14:50~15:35<br>&nbsp;");

        $("#0_7_1").html("第七小节<br>16:05~16:50<br>&nbsp;");
        $("#0_7_2").html("第七小节<br>15:55~16:40<br>&nbsp;");

        $("#0_8_1").html("第八小节<br>16:55~17:40<br>&nbsp;");
        $("#0_8_2").html("第八小节<br>16:45~17:30<br>&nbsp;");

        $("#0_9_1").html("第九小节<br>18:40~19:25<br>&nbsp;");
        $("#0_9_2").html("第九小节<br>18:40~19:25<br>&nbsp;");

        $("#0_10_1").html("第十小节<br>19:30~20:15<br>&nbsp;");
        $("#0_10_2").html("第十小节<br>19:30~20:15<br>&nbsp;");

        $("#0_11_1").html("校选课加上<br>第十一小节<br>20:20~21:05");
        $("#0_11_2").html("校选课加上<br>第十一小节<br>20:20~21:05");
    }else{
        var djjc = 1;
        var nums = 1;
        var start = 1;
        var end = 0;
        var num = 0;
        $.each(sectionTimeObj, function (index, value) {
            if(value.djjc == "" || value.djjc == null || value.djjc == 0){
                $("#dj_0_" + value.id.session).remove();
                $("#0_" + value.id.session).attr("colspan","2");
            }else{
                if(value.djjc == djjc){
                    num++;
                }else{
                    end = value.id.session - 1;
                    $("#dj_0_"+start).html(DjjcSm(djjc));
                    djjc = value.djjc;
                    $("#dj_0_"+start).attr("rowspan",num);
                    for(var i = end; i > start;i--){
                        $("#dj_0_"+i).remove();
                    }
                    num = 0;
                    if(num == 0){
                        start =  value.id.session;
                        num++;
                    }
                }
                if(index == sectionTimeObj.length - 1){
                    end = value.id.session;
                    $("#dj_0_"+start).html(DjjcSm(djjc));
                    djjc = value.djjc;
                    $("#dj_0_"+start).attr("rowspan",num);
                    for(var i = end; i > start;i--){
                        $("#dj_0_"+i).remove();
                    }
                }
            }
            var id = "0_" + value.id.session;
            var jcsj = "";
            if (value.sessionName.indexOf("第") != 0) {
                jcsj += "第";
            }
            jcsj += value.sessionName;
            if (value.sessionName.lastIndexOf("节") != (value.sessionName.length - 1)) {
                jcsj += "节";
            }
            jcsj += "(" + value.startTime.substr(0, 2) + ":"
                + value.startTime.substr(2, 2) + "-"
                + value.endTime.substr(0, 2) + ":"
                + value.endTime.substr(2, 2) + ")";
            $("#" + id).html(jcsj);
        });
    }
}
function DjjcSm(djjc){
    var jcsm = "";
    switch(djjc){
        case 1:
            jcsm = "第一大节";
            break;
        case 2:
            jcsm = "第二大节";
            break;
        case 3:
            jcsm = "第三大节";
            break;
        case 4:
            jcsm = "第四大节";
            break;
        case 5:
            jcsm = "第五大节";
            break;
        case 6:
            jcsm = "第六大节";
            break;
        case 7:
            jcsm = "第七大节";
            break;
        case 8:
            jcsm = "第八大节";
            break;
        case 9:
            jcsm = "第九大节";
            break;
        case 10:
            jcsm = "第十大节";
            break;
        case 11:
            jcsm = "第十一大节";
            break;
        case 12:
            jcsm = "第十二大节";
            break;
        default:
            jcsm = "其他节次";
            break;
    }
    return jcsm;

}
function fillSectionTimeNMGMZ(objid, sectionTimeObj) {
    if(objid == "rawMycoursetable"){
        for(var i = 0; i < sectionTimeObj.length; i++){
            if(i % 2 == 1){
                var id = "raw0_" + sectionTimeObj[i-1].id.session;
                var jcsj = "";
                if (sectionTimeObj[i].sessionName.indexOf("第") != 0) {
                    jcsj += "第";
                }
                jcsj += sectionTimeObj[i].sessionName;
                if (sectionTimeObj[i].sessionName.lastIndexOf("节") != (sectionTimeObj[i].sessionName.length - 1)) {
                    jcsj += "节";
                }
                jcsj += "<br/>(" + sectionTimeObj[i-1].startTime.substr(0, 2) + ":"
                    +  sectionTimeObj[i-1].startTime.substr(2, 2) + "<br/>|<br/>"
                    + sectionTimeObj[i].endTime.substr(0, 2) + ":"
                    + sectionTimeObj[i].endTime.substr(2, 2) + ")";
                $("#" + id).html(jcsj);
            }

        }
    }else{
        for(var i = 0; i < sectionTimeObj.length; i++){
            if(i % 2 == 1){
                var id = "0_" + sectionTimeObj[i-1].id.session;
                var jcsj = "";
                if (sectionTimeObj[i].sessionName.indexOf("第") != 0) {
                    jcsj += "第";
                }
                jcsj += sectionTimeObj[i].sessionName;
                if (sectionTimeObj[i].sessionName.lastIndexOf("节") != (sectionTimeObj[i].sessionName.length - 1)) {
                    jcsj += "节";
                }
                jcsj += "<br/>(" + sectionTimeObj[i-1].startTime.substr(0, 2) + ":"
                    +  sectionTimeObj[i-1].startTime.substr(2, 2) + "<br/>|<br/>"
                    + sectionTimeObj[i].endTime.substr(0, 2) + ":"
                    + sectionTimeObj[i].endTime.substr(2, 2) + ")";
                $("#" + id).html(jcsj);
            }

        }
    }
}
//课表时间节次
function fillSimepleSectionTime(sectionNum) {
    for (var i = 1; i <= sectionNum; i++) {
        id = "0_" + i;
        $("#" + id).html(i);
    }
}

//获取星期节次数据
// function getSectionAndTime(pn, ff) {
//     var retdata = "";
//     $.ajax({
//         url: "/ajax/getSectionAndTime",
//         method: "post",
//         data: "planNumber=" + pn + "&ff=" + ff,
//         async: false,
//         dataType: "json",
//         success: function (data) {
//             retdata = data;
//         },
//         error: function () {
//             urp.alert("查询星期节次信息失败！");
//         }
//     });
//     return retdata;
// }
function getSectionAndTime(pn, ff) {
    var retdata = "";
    $.ajax({
        url: "${pageContext.request.contextPath}/getSectionAndTime",
        method: "post",
        data: "planNumber=" + pn + "&ff=" + ff,
        dataType: "json",
        success: function (data) {
            data = JSON.parse(data);
            console.log(data)
            retdata = data;
        },
        error: function () {
            alert("查询星期节次信息失败！");
        }
    });
    return retdata;
}

function showTable(jc,startSize,endSize,jcsjw,color,firstday){
    var courseTableBodyCont = "";
    for ( var i = startSize; i <= endSize; i++) {
        for ( var j = 0; j <= jc.zts; j++) {
            if (j == 0) {
                courseTableBodyCont += "<th style='vertical-align:middle;width:"+jcsjw+";background-color:"+color+";' id='"+j+"_"+i+"'>"+i+"</th>";
            } else {
                if (firstday == 7) {
                    if (j == 1) {
                        courseTableBodyCont += "<td style='vertical-align:middle;padding:0;height:45px !important;background-color:"+color+";' id='"+firstday+"_"+i+"'></td>";
                    } else {
                        courseTableBodyCont += "<td style='vertical-align:middle;padding:0;height:45px !important;background-color:"+color+";' id='"+(j-1)+"_"+i+"'></td>";
                    }
                } else {
                    courseTableBodyCont += "<td style='vertical-align:middle;padding:0;height:45px !important;background-color:"+color+";' id='"+j+"_"+i+"'></td>";
                }
            }
        }
        courseTableBodyCont += "</tr>";
    }
    return courseTableBodyCont;
}

//复杂表格
function fTable(objid, pn){
    var data = getSectionAndTime(pn,"f");
    var jc = data["section"];

    var sj = data["sectionTime"];
    var firstday = data["firstday"];
    if (firstday == undefined) {
        firstday = 1;
    }
    var cth = courseTableHeadLayout(jc, "f", firstday);
    var swl = "";
    var xwl = "";
    var wsl = "";
    if($("#param_value").val() == "100006" || $("#param_value").val() == "100006"){
        var jcsjw = "150px";
        var color = "";
        if(jc.swjc != 0){
            color = "rgba(207,255,228,0.7)";
            swl += "<tr><th rowspan='2' style='vertical-align:middle;width:5px;background-color:"+color+";'>第一大节</th>";
            swl += showTable(jc,1,2,jcsjw,color,firstday);
            swl += "<tr><th rowspan='2' style='vertical-align:middle;width:5px;background-color:"+color+";'>第二大节</th>";
            swl += showTable(jc,3,4,jcsjw,color,firstday);
        }
        if(jc.xwjc != 0){
            color = "rgba(255,230,207,0.7)";
            xwl += "<tr><th rowspan='3' style='vertical-align:middle;width:5px;background-color:"+color+";'>第三大节</th>";
            xwl += showTable(jc,5,7,jcsjw,color,firstday);
            xwl += "<tr><th rowspan='2' style='vertical-align:middle;width:5px;background-color:"+color+";'>第四大节</th>";
            xwl += showTable(jc,8,9,jcsjw,color,firstday);
        }
        if(jc.wsjc != 0){
            color = "rgba(207,228,255,0.7)";
            wsl += "<tr><th rowspan='3' style='vertical-align:middle;width:5px;background-color:"+color+";'>第五大节</th>";
            wsl += showTable(jc,10,12,jcsjw,color,firstday);
        }
    }else if($("#param_value").val() == "100004"){
        if(jc.swjc != 0){
            swl = courseTableBodyLayoutNMGMZ(objid,jc, "sw", "f", firstday);
        }
        if(jc.xwjc != 0){
            xwl = courseTableBodyLayoutNMGMZ(objid,jc, "xw", "f", firstday);
        }
        if(jc.wsjc != 0){
            wsl = courseTableBodyLayoutNMGMZ(objid,jc, "ws", "f", firstday);
        }
    }else{
        if(jc.swjc != 0){
            swl = courseTableBodyLayout(jc, "sw", "f", firstday);
        }
        if(jc.xwjc != 0){
            xwl = courseTableBodyLayout(jc, "xw", "f", firstday);
        }
        if(jc.wsjc != 0){
            wsl = courseTableBodyLayout(jc, "ws", "f", firstday);
        }
    }


    if(objid == "rawMycoursetable"){
        var t = "<table class='table table-bordered' id='rawcourseTable'><thead><tr id='rawcourseTableHead'>"
            + cth
            + "</tr></thead><tbody id='rawcourseTableBody'>"
            + swl + xwl + wsl
            + "</tbody></table>";

    }else{
        var t = "<table class='table table-bordered' id='courseTable'><thead><tr id='courseTableHead'>"
            + cth
            + "</tr></thead><tbody id='courseTableBody'>"
            + swl + xwl + wsl
            + "</tbody></table>";
    }

    //document.getElementById(objid).innerHTML = t;

    //var iframe = document.getElementById("rawIframe").rawMycoursetable;
    /*var iframe =  document.getElementById("rawIframe").contentWindow.document.getElementById('rawMycoursetable');
    console.log(iframe);
}else{*/
    document.getElementById(objid).innerHTML = t;
    //}
    if($("#param_value").val() == "100004"){
        fillSectionTimeNMGMZ(objid, sj);
    }else{
        fillSectionTime(sj);
    }

}

//简单表格
function jTable(objid, pn){
    var data = getSectionAndTime(pn,"j");
    var jc = data["section"];
    var firstday = data["firstday"];
    if (firstday == undefined) {
        firstday = 1;
    }
    var cth = courseTableHeadLayout(jc, "j", firstday);
    var swl = courseTableBodyLayout(jc, "sw", "j", firstday);
    var xwl = courseTableBodyLayout(jc, "xw", "j", firstday);
    var wsl = courseTableBodyLayout(jc, "ws", "j", firstday);
    var t = "<table class='table table-bordered' id='courseTable'><thead><tr id='courseTableHead'>"
        + cth
        + "</tr></thead><tbody id='courseTableBody'>"
        + swl + xwl + wsl
        + "</tbody></table>";
    document.getElementById(objid).innerHTML = t;
    fillSimepleSectionTime(jc.tjc);
}

CourseTable.prototype = {
    "init": fTable,
    "initSimpleTable": jTable
};

coursetable = new CourseTable();