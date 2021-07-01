var Links = {
    setColor: function (tag, color) {
      var alist = document.querySelectorAll(tag);
      var i = 0;
      while (i < alist.length) {
        alist[i].style.color = color;
        i = i + 1;
      }
    },
  };
  var Body = {
    BodySetColor: function (color) {
      document.querySelector("body").style.color = color;
    },
    BodySetBackGroundColor: function (color) {
      document.querySelector("body").style.backgroundColor = color;
    },
  };
  function nightDayHandler(self) {
    var target = document.querySelector("body");
    if (self.value === "night") {
      Body.BodySetColor("white");
      Body.BodySetBackGroundColor("black");
      self.value = "day";
      Links.setColor("a", "powderBlue");
    } else {
      Body.BodySetColor("black");
      Body.BodySetBackGroundColor("white");
      self.value = "night";
      Links.setColor("a", "blue");
    }
  }