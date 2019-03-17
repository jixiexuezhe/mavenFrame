(function(c, e) {
    var a = {}.hasOwnProperty;
    function d(f) {
        var g = arguments.callee;
        this.modelName = f;
        this.init = (function(h) {
            if (h != e && g.init[h]) {
                return g.init[h]
            }
            return function() {}
        })(f)
    }
    d.extend = function() {
        var f = arguments[0] || {};
        for (var h = 1; h < arguments.length; h++) {
            for (var g in arguments[h]) {
                f[g] = arguments[h][g]
            }
        }
        return f
    };
    d.extend(d.prototype, {
        extend: d.extend,
        makeIframe: function(g) {
            var h = document.createElement("iframe"),
            f = document.getElementById(g.id);
            h.src = this.src;
            h.setAttribute("frameborder", "0");
            h.setAttribute("border", "0");
            h.setAttribute("width", "100%");
            h.setAttribute("height", "100%");
            h.setAttribute("id", "sosobtc_market_iframe");
            if (typeof g.completeLoad == "function") {
                h.onload = g.completeLoad
            }
            f.appendChild(h)
        }
    });
    d.init = {
        Market: function(f) {
            var g = this.extend({
                row: ["price", "buy", "sell", "high", "low", "vol"],
                short_tip: true,
                completeLoad: function() {}
            },
            (f || {}));
            var h = [];
            if (g.btc && g.btc instanceof Array) {
                h.push("btc=" + encodeURIComponent(g.btc.join("|")))
            }
            if (g.ltc && g.ltc instanceof Array) {
                h.push("ltc=" + encodeURIComponent(g.ltc.join("|")))
            }
            if (g.alt && g.alt instanceof Array) {
                h.push("alt=" + encodeURIComponent(g.alt.join("|")))
            }
            h.push("short_tip=" + ((g.short_tip) ? "1": "0"));
            if (g.row && g.row instanceof Array) {
                h.push("row=" + encodeURIComponent(g.row.join("|")))
            }
            this.src = "http://www.sosobtc.com/do/plugin/market" + (h.length > 0 ? "?" + h.join("&") : "");
            this.makeIframe(g)
        },
        Kline: function(g) {
            var h = this.extend({
                sid: "",
                enableChatRoom: true,
                chatRoomHeight: 180,
                chatRoomWidth: 320,
                enableHotKeyEsc: true,
                enableHotKeyEnter: true,
                openChatRoom: true,
                completeLoad: function() {}
            },
            (g || {}));
            this.src = "http://www.sosobtc.com/plugin/kline?" + i(h);
            this.makeIframe(h);
            function i(j, l) {
                l = typeof l === "undefined" ? true: Boolean(l);
                var k = "";
                for (var n in j) {
                    if (!a.call(j, n)) {
                        continue
                    }
                    k += n + "=" + m(j[n]) + "&"
                }
                if ( !! k) {
                    k = k.slice(0, -1)
                }
                return k;
                function m(o) {
                    return l ? encodeURIComponent(String(o)) : String(o)
                }
            }
            function f() {}
        }
    };
    function b(f) {
        return new d(f)
    }
    c.SOSOBTC = b
})(window);