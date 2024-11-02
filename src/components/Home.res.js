// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Caml from "rescript/lib/es6/caml.js";
import * as Util from "../shared/Util.res.js";
import * as ThemeChangeButton from "./ThemeChangeButton.res.js";
import * as JsxRuntime from "react/jsx-runtime";

async function make(param) {
  var posts = Util.getAllPostFileNames();
  var data = (await Promise.all(posts.map(async function (fileName) {
                var match = await Util.getContentAndFrontmatter(fileName);
                return [
                        fileName,
                        match.frontmatter
                      ];
              }))).toSorted(function (param, param$1) {
        return Caml.string_compare(param$1[1].key, param[1].key);
      });
  return JsxRuntime.jsxs("div", {
              children: [
                JsxRuntime.jsx(ThemeChangeButton.make, {}),
                JsxRuntime.jsx("h1", {
                      children: "프로그래밍의 도를 찾아서",
                      className: "text-2xl lg:text-3xl font-bold"
                    }),
                JsxRuntime.jsx("div", {
                      children: data.map(function (param) {
                            var frontmatter = param[1];
                            return JsxRuntime.jsxs("div", {
                                        children: [
                                          JsxRuntime.jsxs("div", {
                                                children: [
                                                  JsxRuntime.jsx("div", {
                                                        children: new Date(frontmatter.key).toLocaleDateString("ko-KR"),
                                                        className: "text-slate-600"
                                                      }),
                                                  JsxRuntime.jsx("div", {
                                                        children: frontmatter.tags.join(", "),
                                                        className: "text-slate-700"
                                                      })
                                                ],
                                                className: "flex gap-3 text-xs"
                                              }),
                                          JsxRuntime.jsx("a", {
                                                children: frontmatter.title,
                                                className: "text-lg font-semibold text-slate-700",
                                                href: "./posts/" + param[0]
                                              }),
                                          JsxRuntime.jsx("div", {
                                                children: frontmatter.excerpt,
                                                className: "text-sm text-slate-600"
                                              })
                                        ],
                                        className: "flex flex-col gap-1.5"
                                      }, frontmatter.title);
                          }),
                      className: "flex flex-col gap-7"
                    })
              ],
              className: "flex flex-col gap-9 px-6 py-12 max-w-xl mx-auto md:max-w-2xl"
            });
}

var Home = make;

var make$1 = Home;

export {
  make$1 as make,
}
/* Util Not a pure module */
