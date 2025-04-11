!(function () {
  function q(a) {
    var c = [],
      b = [],
      e = (function (f) {
        for (var g = {}, h = 0; h < u.length; h++) {
          var d = u[h];
          if (d.Tag === f) {
            g = d;
            break;
          }
          var l = void 0,
            k = d.Tag;
          var C =
            ((k =
              -1 !== k.indexOf("http:")
                ? k.replace("http:", "")
                : k.replace("https:", "")),
            -1 !== (l = k.indexOf("?")) ? k.replace(k.substring(l), "") : k);
          if (f && (-1 !== f.indexOf(C) || -1 !== d.Tag.indexOf(f))) {
            g = d;
            break;
          }
        }
        return g;
      })(a);
    return (
      e.CategoryId && (c = e.CategoryId),
      e.Vendor && (b = e.Vendor.split(":")),
      !e.Tag &&
        D &&
        (b = c =
          (function (f) {
            var g = [],
              h = (function (d) {
                var l = document.createElement("a");
                return (
                  (l.href = d),
                  -1 !== (d = l.hostname.split(".")).indexOf("www") ||
                  2 < d.length
                    ? d.slice(1).join(".")
                    : l.hostname
                );
              })(f);
            v.some(function (d) {
              return d === h;
            }) && (g = ["C0004"]);
            return g;
          })(a)),
      { categoryIds: c, vsCatIds: b }
    );
  }
  function w(a) {
    return (
      !a ||
      !a.length ||
      (a && window.OptanonActiveGroups
        ? a.every(function (c) {
            return -1 !== window.OptanonActiveGroups.indexOf("," + c + ",");
          })
        : void 0)
    );
  }
  function m(a, c) {
    void 0 === c && (c = null);
    var b = window,
      e = b.OneTrust && b.OneTrust.IsVendorServiceEnabled;
    b = e && b.OneTrust.IsVendorServiceEnabled();
    return "Categories" === r || ("All" === r && e && !b)
      ? w(a)
      : ("Vendors" === r || ("All" === r && e && b)) && w(c);
  }
  function n(a) {
    a = a.getAttribute("class") || "";
    return -1 !== a.indexOf("optanon-category") || -1 !== a.indexOf("ot-vscat");
  }
  function p(a) {
    return a.hasAttribute("data-ot-ignore");
  }
  function x(a, c, b) {
    void 0 === b && (b = null);
    var e = a.join("-"),
      f = b && b.join("-"),
      g = c.getAttribute("class") || "",
      h = "",
      d = !1;
    a &&
      a.length &&
      -1 === g.indexOf("optanon-category-" + e) &&
      ((h = ("optanon-category-" + e).trim()), (d = !0));
    b &&
      b.length &&
      -1 === g.indexOf("ot-vscat-" + f) &&
      ((h += " " + ("ot-vscat-" + f).trim()), (d = !0));
    d && c.setAttribute("class", h + " " + g);
  }
  function y(a, c, b) {
    void 0 === b && (b = null);
    var e;
    a = a.join("-");
    b = b && b.join("-");
    return (
      -1 === c.indexOf("optanon-category-" + a) &&
        (e = ("optanon-category-" + a).trim()),
      -1 === c.indexOf("ot-vscat-" + b) &&
        (e += " " + ("ot-vscat-" + b).trim()),
      e + " " + c
    );
  }
  function z(a) {
    var c,
      b = q(a.src || "");
    (b.categoryIds.length || b.vsCatIds.length) &&
      (x(b.categoryIds, a, b.vsCatIds),
      m(b.categoryIds, b.vsCatIds) || (a.type = "text/plain"),
      a.addEventListener(
        "beforescriptexecute",
        (c = function (e) {
          "text/plain" === a.getAttribute("type") && e.preventDefault();
          a.removeEventListener("beforescriptexecute", c);
        })
      ));
  }
  function A(a) {
    var c = a.src || "",
      b = q(c);
    (b.categoryIds.length || b.vsCatIds.length) &&
      (x(b.categoryIds, a, b.vsCatIds),
      m(b.categoryIds, b.vsCatIds) ||
        (a.removeAttribute("src"), a.setAttribute("data-src", c)));
  }
  var u = JSON.parse(
      '[{"Tag":"https://d1qka67o21nlgb.cloudfront.net/i/7nuorMleSFQrbeB8joKyWQ","CategoryId":["C0003"],"Vendor":null},{"Tag":"https://bam-cell.nr-data.net/1/689d5b4562","CategoryId":["C0002"],"Vendor":null},{"Tag":"https://bat.bing.com/bat.js","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://static.zdassets.com/web_widget/latest/classic/web-widget-5324-da42c7a.js","CategoryId":["C0002"],"Vendor":null},{"Tag":"https://www.facebook.com/tr/","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://static.zdassets.com/web_widget/classic/latest/web-widget-main-4b22769.js","CategoryId":["C0002","C0003"],"Vendor":null},{"Tag":"https://gifts.worldwildlife.org/gift-center/ScriptResource.axd","CategoryId":["C0002"],"Vendor":null},{"Tag":"https://static.zdassets.com/web_widget/classic/latest/web-widget-main-ef78273.js","CategoryId":["C0003"],"Vendor":null},{"Tag":"https://sb.scorecardresearch.com/b","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://dpm.demdex.net/ibs:dpid\x3d1121\x26dpuuid\x3d5141210827404561465\x26redir\x3d","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://code.highcharts.com/highcharts.src.js","CategoryId":["C0003"],"Vendor":null},{"Tag":"https://static.zdassets.com/web_widget/latest/classic/web-widget-chat-sdk-278a2ee.js","CategoryId":["C0003"],"Vendor":null},{"Tag":"https://pixel.quantserve.com/pixel","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://bam-cell.nr-data.net/1/6990b25c83","CategoryId":["C0002"],"Vendor":null},{"Tag":"https://execution-ci360.worldwildlife.org/js/ot-api.min.js","CategoryId":["C0003"],"Vendor":null},{"Tag":"https://static.zdassets.com/web_widget/latest/classic/web-widget-6090-278a2ee.js","CategoryId":["C0002"],"Vendor":null},{"Tag":"https://dpm.demdex.net/ibs:dpid\x3d1121\x26dpuuid\x3d5142336725584379677\x26redir\x3d","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://usc-excel.officeapps.live.com/x/_layouts/RemoteTelemetry.ashx","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://www.scribd.com/embeds/291990100/content","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://googleads.g.doubleclick.net/pagead/viewthroughconversion/1052732224/","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://dpm.demdex.net/ibs:dpid\x3d1121\x26dpuuid\x3d5133329528065985741\x26redir\x3d","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://tags.w55c.net/rs","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://www.bugherd.com/sidebarv2.js","CategoryId":["C0002"],"Vendor":null},{"Tag":"http://cs.choozle.com/dp/chz/28572","CategoryId":["C0004"],"Vendor":null},{"Tag":"http://cs.choozle.com/dp/chz/28573","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://docs.google.com/forms/d/e/1FAIpQLSevu_WEvFg4ewD7pO789C5JMVNlGJEbOXId8EIAkU2mWUsiow/viewform","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://sp.analytics.yahoo.com/sp.pl","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://www.scribd.com/embeds/291796313/content","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://apis.google.com/js/platform.js","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://sidebar.bugherd.com/sidebar/embed_html","CategoryId":["C0002"],"Vendor":null},{"Tag":"https://bat.bing.com/actionp/0","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://dpm.demdex.net/ibs:dpid\x3d1121\x26dpuuid\x3d5141210827396685571\x26redir\x3d","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://abcnews.go.com/video/embed","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://www.jotform.com/uploads/wwfusogc/form_files/shutterstock_107642846.6487831b037be0.69811432.jpg","CategoryId":["C0003"],"Vendor":null},{"Tag":"https://c.bing.com/c.gif","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://secure.quantserve.com/quant.js","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://translate-pa.googleapis.com/v1/supportedLanguages","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://dev.visualwebsiteoptimizer.com/j.php?a\x3d23273\x26u\x3dhttps%3A%2F%2Fogcstg.worldwildlife.org%2Fgift-center%2FRCart.aspx\x26r\x3d0.7717683070534971","CategoryId":["C0002"],"Vendor":null},{"Tag":"https://cs.choozle.com/dp/chz/25860","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://worldwildlifefund-my.sharepoint.com/personal/jacquelyn_beattie_wwfus_org/_layouts/15/Doc.aspx","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://s.amazon-adsystem.com/dcm","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://dpm.demdex.net/ibs:dpid\x3d1121\x26dpuuid\x3d5142336725581993831\x26redir\x3d","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://dpm.demdex.net/ibs:dpid\x3d1121\x26dpuuid\x3d5109685629984955964\x26redir\x3d","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://translate.google.com/translate_a/element.js","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://googleads.g.doubleclick.net/pagead/viewthroughconversion/1071914865/","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://dpm.demdex.net/ibs:dpid\x3d1121\x26dpuuid\x3d5108559730136389806\x26redir\x3d","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://cdn01.jotfor.ms/themes/CSS/5e6b428acc8c4e222d1beb91.css","CategoryId":["C0003"],"Vendor":null},{"Tag":"https://static.zdassets.com/web_widget/classic/latest/web-widget-chat-sdk-4b22769.js","CategoryId":["C0003"],"Vendor":null},{"Tag":"https://open.spotify.com/embed/episode/4Tcyt8pfp972gBryPf7oNu","CategoryId":["C0003"],"Vendor":null},{"Tag":"https://cs.choozle.com/sync","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://www.scribd.com/embeds/289361043/content","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://bam.nr-data.net/1/16357338ab","CategoryId":["C0002"],"Vendor":null},{"Tag":"https://worldwildlifefund-my.sharepoint.com/personal/jacquelyn_beattie_wwfus_org/_layouts/15/guestaccess.aspx","CategoryId":["C0003"],"Vendor":null},{"Tag":"https://platform.twitter.com/widgets.js","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://cse.google.com/cse.js","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://s.amazon-adsystem.com/iui3","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://www.scribd.com/embeds/259780474/content","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://5879019.fls.doubleclick.net/activityi","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://usc-excel.officeapps.live.com/x/RemoteUls.ashx","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://dpm.demdex.net/ibs:dpid\x3d1121\x26dpuuid\x3d5124322328796803045\x26redir\x3d","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://www.google-analytics.com/analytics.js","CategoryId":["C0002"],"Vendor":null},{"Tag":"https://explorer.land/embed/page/wwf-forests-forward/","CategoryId":["C0003"],"Vendor":null},{"Tag":"https://static.zdassets.com/ekr/asset_composer.js?key\x3d7f237240-f3c5-4922-aa1f-b4c70aa52d65","CategoryId":["C0003"],"Vendor":null},{"Tag":"https://diversityjobs.com/imglib/employer-images/employer-member.png","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://dpm.demdex.net/ibs:dpid\x3d1121\x26dpuuid\x3d5133329528051272870\x26redir\x3d","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://www.youtube.com/subscribe_embed","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://bat.bing.com/action/0","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://forms.office.com/pages/responsepage.aspx","CategoryId":["C0003","C0004"],"Vendor":null},{"Tag":"https://execution-ci360.worldwildlife.org/js/ot-all.min.js","CategoryId":["C0003"],"Vendor":null},{"Tag":"https://cs.choozle.com/dp/chz/28573","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://cs.choozle.com/dp/chz/28572","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://connect.facebook.net/signals/config/547030295430877","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://wwfusmemsvcshelp.zendesk.com/auth/v2/host/without_iframe.js","CategoryId":["C0003"],"Vendor":null},{"Tag":"https://docs.google.com/forms/d/1cRIEIdo-UdThUWH4GDdSmSzoDXe5-dEn-v20ERuorPM/viewform","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://dpm.demdex.net/ibs:dpid\x3d1121\x26dpuuid\x3d5124322328821002443\x26redir\x3d","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://bam.nr-data.net/1/689d5b4562","CategoryId":["C0002"],"Vendor":null},{"Tag":"http://edge.quantserve.com/quant.js","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://static.zdassets.com/web_widget/latest/classic/web-widget-chat-sdk-da42c7a.js","CategoryId":["C0003"],"Vendor":null},{"Tag":"https://c.office.com/c.gif","CategoryId":["C0004"],"Vendor":null},{"Tag":"https://static.zdassets.com/web_widget/latest/web-widget-framework-8c45d598650b92391c71.js","CategoryId":["C0003"],"Vendor":null},{"Tag":"https://apis.google.com/js/plusone.js","CategoryId":["C0004"],"Vendor":null}]'
    ),
    D = JSON.parse("true"),
    r = JSON.parse('"Categories"'),
    v = (v =
      "addthis.com addtoany.com adsrvr.org amazon-adsystem.com bing.com bounceexchange.com bouncex.net criteo.com criteo.net dailymotion.com doubleclick.net everesttech.net facebook.com facebook.net googleadservices.com googlesyndication.com krxd.net liadm.com linkedin.com outbrain.com rubiconproject.com sharethis.com taboola.com twitter.com yahoo.com".split(
        " "
      )).filter(function (a) {
      if ("null" !== a && a.trim().length) return a;
    }),
    t = ["embed", "iframe", "img", "script"],
    B =
      (new MutationObserver(function (a) {
        Array.prototype.forEach.call(a, function (c) {
          Array.prototype.forEach.call(c.addedNodes, function (e) {
            1 !== e.nodeType ||
              -1 === t.indexOf(e.tagName.toLowerCase()) ||
              n(e) ||
              p(e) ||
              ("script" === e.tagName.toLowerCase() ? z : A)(e);
          });
          var b = c.target;
          !c.attributeName ||
            (n(b) && p(b)) ||
            ("script" === b.nodeName.toLowerCase()
              ? z(b)
              : -1 !== t.indexOf(c.target.nodeName.toLowerCase()) && A(b));
        });
      }).observe(document.documentElement, {
        childList: !0,
        subtree: !0,
        attributes: !0,
        attributeFilter: ["src"],
      }),
      document.createElement);
  document.createElement = function () {
    for (var a, c, b = [], e = 0; e < arguments.length; e++)
      b[e] = arguments[e];
    return "script" === b[0].toLowerCase() ||
      -1 !== t.indexOf(b[0].toLowerCase())
      ? ((a = B.bind(document).apply(void 0, b)),
        (c = a.setAttribute.bind(a)),
        Object.defineProperties(a, {
          src: {
            get: function () {
              try {
                return a.cloneNode().src;
              } catch (f) {
                return a.getAttribute("src") || "";
              }
            },
            set: function (f) {
              var g = b[0],
                h,
                d,
                l,
                k = "";
              k = q(
                (k =
                  "string" == typeof f || f instanceof Object
                    ? f.toString()
                    : k)
              );
              return (
                (d = g),
                (l = a),
                (!(h = k).categoryIds.length && !h.vsCatIds.length) ||
                "script" !== d.toLowerCase() ||
                n(l) ||
                m(h.categoryIds, h.vsCatIds) ||
                p(l)
                  ? ((d = g),
                    (h = a),
                    !(l = k).categoryIds.length ||
                    -1 === t.indexOf(d.toLowerCase()) ||
                    n(h) ||
                    m(l.categoryIds, l.vsCatIds) ||
                    p(h)
                      ? c("src", f)
                      : (a.removeAttribute("src"),
                        c("data-src", f),
                        (g = a.getAttribute("class")) ||
                          c("class", y(k.categoryIds, g || "", k.vsCatIds))))
                  : (c("type", "text/plain"), c("src", f)),
                !0
              );
            },
          },
          type: {
            get: function () {
              return a.getAttribute("type") || "";
            },
            set: function (f) {
              return (
                (h = c),
                (d = q((g = a).src || "")),
                h(
                  "type",
                  (!d.categoryIds.length && !d.vsCatIds.length) ||
                    n(g) ||
                    m(d.categoryIds, d.vsCatIds) ||
                    p(g)
                    ? f
                    : "text/plain"
                ),
                !0
              );
            },
          },
          class: {
            set: function (f) {
              return (
                (h = c),
                (!(d = q((g = a).src)).categoryIds.length &&
                  !d.vsCatIds.length) ||
                n(g) ||
                m(d.categoryIds, d.vsCatIds) ||
                p(g)
                  ? h("class", f)
                  : h("class", y(d.categoryIds, f, d.vsCatIds)),
                !0
              );
            },
          },
        }),
        (a.setAttribute = function (f, g, h) {
          ("type" !== f && "src" !== f) || h ? c(f, g) : (a[f] = g);
        }),
        a)
      : B.bind(document).apply(void 0, b);
  };
})();
