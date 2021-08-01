
{}
  :configs $ {} (:reload-fn |app.main/reload!) (:port 6001) (:output |src) (:compact-output? true) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/compact.cirru |lilac/compact.cirru |memof/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |reel.calcit/compact.cirru
    :init-fn |app.main/main!
    :extension |.cljs
  :ir $ {} (:package |app)
    :files $ {}
      |app.comp.container $ {}
        :defs $ {}
          |comp-container $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |reel) (:type :leaf) (:at 1507461830530) (:by |root)
                :type :expr
                :at 1499755354983
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1507461833421) (:by |root)
                  |L $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |store) (:type :leaf) (:at 1507461835738) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:store) (:type :leaf) (:at 1507461837276) (:by |root)
                              |j $ {} (:text |reel) (:type :leaf) (:at 1507461838285) (:by |root)
                            :type :expr
                            :at 1507461836110
                            :by |root
                        :type :expr
                        :at 1507461834650
                        :by |root
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |states) (:type :leaf) (:at 1509727105928) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:states) (:type :leaf) (:at 1509727107223) (:by |root)
                              |j $ {} (:text |store) (:type :leaf) (:at 1626777497473) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1509727106316
                            :by |root
                        :type :expr
                        :at 1509727104820
                        :by |root
                      |n $ {}
                        :data $ {}
                          |T $ {} (:text |cursor) (:type :leaf) (:at 1584780923771) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |either) (:type :leaf) (:at 1610793422595) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |:cursor) (:type :leaf) (:at 1584780925829) (:by |rJG4IHzWf)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1584780926681) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584780923944
                                :by |rJG4IHzWf
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1584780994497) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584780993270
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1584780991636
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1584780921790
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |state) (:type :leaf) (:at 1584780889620) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |either) (:type :leaf) (:at 1610793424867) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:data) (:type :leaf) (:at 1584780894689) (:by |rJG4IHzWf)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1584780900314) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584780894090
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1584780901408) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:content) (:type :leaf) (:at 1584780906050) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"") (:type :leaf) (:at 1584780907617) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1584780901741
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1584780901014
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1584780889933
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1584780887905
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1507461834351
                    :by |root
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1627800801544) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1627800801544) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1627800801544) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |merge) (:type :leaf) (:at 1627800801544) (:by |rJG4IHzWf)
                                  |j $ {} (:text |ui/global) (:type :leaf) (:at 1627800801544) (:by |rJG4IHzWf)
                                  |r $ {} (:text |ui/fullscreen) (:type :leaf) (:at 1627800801544) (:by |rJG4IHzWf)
                                  |v $ {} (:text |ui/column) (:type :leaf) (:at 1627800801544) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627800801544
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627800801544
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627800801544
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |memof-call) (:type :leaf) (:at 1627800801544) (:by |rJG4IHzWf)
                          |j $ {} (:text |comp-header) (:type :leaf) (:at 1627800801544) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627800801544
                        :by |rJG4IHzWf
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |comp-messages) (:type :leaf) (:at 1627800801544) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:messages) (:type :leaf) (:at 1627800818061) (:by |rJG4IHzWf)
                              |j $ {} (:text |store) (:type :leaf) (:at 1627800818061) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627800818061
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627800814515
                        :by |rJG4IHzWf
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |memof-call) (:type :leaf) (:at 1627800801544) (:by |rJG4IHzWf)
                          |j $ {} (:text |comp-input) (:type :leaf) (:at 1627800801544) (:by |rJG4IHzWf)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |>>) (:type :leaf) (:at 1627800801544) (:by |rJG4IHzWf)
                              |j $ {} (:text |states) (:type :leaf) (:at 1627800801544) (:by |rJG4IHzWf)
                              |r $ {} (:text |:input) (:type :leaf) (:at 1627800801544) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627800801544
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627800801544
                        :by |rJG4IHzWf
                      |y $ {}
                        :data $ {}
                          |T $ {} (:text |when) (:type :leaf) (:at 1627800801544) (:by |rJG4IHzWf)
                          |j $ {} (:text |dev?) (:type :leaf) (:at 1627800801544) (:by |rJG4IHzWf)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |comp-reel) (:type :leaf) (:at 1627800801544) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |>>) (:type :leaf) (:at 1627800801544) (:by |rJG4IHzWf)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1627800801544) (:by |rJG4IHzWf)
                                  |r $ {} (:text |:reel) (:type :leaf) (:at 1627800801544) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627800801544
                                :by |rJG4IHzWf
                              |r $ {} (:text |reel) (:type :leaf) (:at 1627800801544) (:by |rJG4IHzWf)
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1627800801544) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627800801544
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627800801544
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627800801544
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627800801544
                    :by |rJG4IHzWf
                :type :expr
                :at 1507461832154
                :by |root
            :type :expr
            :at 1499755354983
          |comp-input $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-input) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |states) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                :type :expr
                :at 1627800983771
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |let) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |cursor)
                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:cursor)
                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |states)
                        :type :expr
                        :at 1627800983771
                        :by |rJG4IHzWf
                      |j $ {}
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |state)
                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |either)
                              |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:data)
                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |states)
                              |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |{})
                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:content)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text "|\"")
                        :type :expr
                        :at 1627800983771
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627800983771
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |div)
                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |{})
                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:style)
                              |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |merge)
                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |ui/row-middle)
                                  |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |{})
                                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:padding)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text "|\"6px 4px")
                                      |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:background-color)
                                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |hsl)
                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |0)
                                              |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |0)
                                              |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |97)
                                      |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:border-top)
                                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |str)
                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text "|\"1px solid ")
                                              |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |hsl)
                                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |0)
                                                  |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |0)
                                                  |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |90)
                      |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |textarea)
                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |{})
                              |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:value)
                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:content)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |state)
                              |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:placeholder)
                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text "|\"Content")
                              |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:style)
                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |merge)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |ui/textarea)
                                      |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |ui/expand)
                                      |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |{})
                                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:height)
                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |40)
                                          |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:line-height)
                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text "|\"24px")
                                          |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:border)
                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:none)
                              |x $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:on-input)
                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |fn)
                                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |e)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |d!)
                                      |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |d!)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |cursor)
                                          |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |assoc)
                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |state)
                                              |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:content)
                                              |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:value)
                                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |e)
                              |y $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:autofocus)
                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |true)
                              |yT $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:on-keydown)
                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |fn)
                                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |e)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |d!)
                                      |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |let)
                                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                            :data $ {}
                                              |T $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |event)
                                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:event)
                                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |e)
                                          |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |when)
                                              |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |=)
                                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text "|\"Enter")
                                                  |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |.-key)
                                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |event)
                                              |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |.!preventDefault)
                                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:event)
                                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |e)
                                              |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |d!)
                                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:message)
                                                  |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |.-value)
                                                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                                        :data $ {}
                                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |.-target)
                                                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                                            :data $ {}
                                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:event)
                                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |e)
                                              |x $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |d!)
                                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |cursor)
                                                  |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |assoc)
                                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |state)
                                                      |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:content)
                                                      |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text "|\"")
                                              |y $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |scroll-view!)
                      |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |=<)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |6)
                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |nil)
                      |x $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |div)
                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |{})
                              |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:style)
                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |{})
                                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:border)
                                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |str)
                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text "|\"2px solid ")
                                              |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |hsl)
                                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |200)
                                                  |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |80)
                                                  |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |60)
                                      |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:width)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |28)
                                      |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:height)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |28)
                                      |x $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800983771)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text |:border-radius)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800983771) (:text "|\"50%")
                    :type :expr
                    :at 1627800983771
                    :by |rJG4IHzWf
                :type :expr
                :at 1627800983771
                :by |rJG4IHzWf
            :type :expr
            :at 1627800983771
            :by |rJG4IHzWf
          |comp-messages $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-messages) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |ms) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
                :type :expr
                :at 1627800832615
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |div) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
                          |j $ {} (:text |ui/expand) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627800832615
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627800832615
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |list->) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:id) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
                              |j $ {} (:text "|\"message-area") (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627800832615
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627800832615
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |->) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
                          |j $ {} (:text |ms) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
                          |n $ {}
                            :data $ {}
                              |T $ {} (:text |w-log) (:type :leaf) (:at 1627801181069) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627801179887
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |either) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627800832615
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627800832615
                            :by |rJG4IHzWf
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |.map-indexed) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |idx) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
                                      |j $ {} (:text |m) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627800832615
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |[]) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
                                      |j $ {} (:text |idx) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |comp-message) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
                                          |j $ {} (:text |m) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627800832615
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627800832615
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627800832615
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627800832615
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627800832615
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627800832615
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |=<) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
                      |j $ {} (:text |nil) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
                      |r $ {} (:text |80) (:type :leaf) (:at 1627800832615) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627800832615
                    :by |rJG4IHzWf
                :type :expr
                :at 1627800832615
                :by |rJG4IHzWf
            :type :expr
            :at 1627800832615
            :by |rJG4IHzWf
          |scroll-view! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627801007512) (:by |rJG4IHzWf)
              |j $ {} (:text |scroll-view!) (:type :leaf) (:at 1627801007512) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1627801007512
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |js/setTimeout) (:type :leaf) (:at 1627801007512) (:by |rJG4IHzWf)
                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627801007512)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801007512) (:text |fn)
                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627801007512)
                        :data $ {}
                      |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627801007512)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801007512) (:text |let)
                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627801007512)
                            :data $ {}
                              |T $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627801007512)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801007512) (:text |target)
                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627801007512)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801007512) (:text |js/document.querySelector)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801007512) (:text "|\"#message-area")
                              |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627801007512)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801007512) (:text |last-child)
                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627801007512)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801007512) (:text |if)
                                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627801007512)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801007512) (:text |some?)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801007512) (:text |target)
                                      |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627801007512)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801007512) (:text |.-lastElementChild)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801007512) (:text |target)
                          |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627801007512)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801007512) (:text |if)
                              |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627801007512)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801007512) (:text |some?)
                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801007512) (:text |last-child)
                              |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627801007512)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801007512) (:text |.!scrollIntoViewIfNeeded)
                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801007512) (:text |last-child)
                              |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627801007512)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801007512) (:text |js/console.warn)
                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801007512) (:text "|\"no target")
                  |r $ {} (:text |100) (:type :leaf) (:at 1627801007512) (:by |rJG4IHzWf)
                :type :expr
                :at 1627801007512
                :by |rJG4IHzWf
            :type :expr
            :at 1627801007512
            :by |rJG4IHzWf
          |comp-header $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-header) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1627800935973
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |div) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800935973)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text |{})
                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800935973)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text |:style)
                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800935973)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text |merge)
                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text |ui/row-parted)
                              |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800935973)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text |{})
                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800935973)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text |:padding)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text "|\"4px 6px")
                                  |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800935973)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text |:font-weight)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text |:bold)
                                  |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800935973)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text |:font-size)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text |16)
                                  |x $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800935973)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text |:background-color)
                                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800935973)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text |hsl)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text |0)
                                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text |0)
                                          |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text |97)
                                  |y $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800935973)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text |:border-bottom)
                                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800935973)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text |str)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text "|\"1px solid ")
                                          |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627800935973)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text |hsl)
                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text |0)
                                              |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text |0)
                                              |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text |90)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text |<>)
                      |j $ {} (:text "|\"<") (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627800935973
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text |<>)
                      |j $ {} (:text "|\"Sky Chat") (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627800935973
                    :by |rJG4IHzWf
                  |x $ {}
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627800935973) (:text |<>)
                      |j $ {} (:text "|\"...") (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627800935973
                    :by |rJG4IHzWf
                :type :expr
                :at 1627800935973
                :by |rJG4IHzWf
            :type :expr
            :at 1627800935973
            :by |rJG4IHzWf
          |comp-message $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-message) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |content) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                :type :expr
                :at 1627800855755
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |div) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |merge) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                              |j $ {} (:text |ui/row) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:width) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"90%") (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627800855755
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:padding) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"4px 6px") (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627800855755
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627800855755
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627800855755
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627800855755
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627800855755
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627800855755
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:width) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                          |j $ {} (:text |40) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627800855755
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:height) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                          |j $ {} (:text |40) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627800855755
                                        :by |rJG4IHzWf
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |:background-color) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |hsl) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |rand-int) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |360) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627800855755
                                                :by |rJG4IHzWf
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |rand-int) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |80) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627800855755
                                                :by |rJG4IHzWf
                                              |v $ {}
                                                :data $ {}
                                                  |T $ {} (:text |rand-int) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |90) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627800855755
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627800855755
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627800855755
                                        :by |rJG4IHzWf
                                      |x $ {}
                                        :data $ {}
                                          |T $ {} (:text |:border-radius) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"4px") (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627800855755
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627800855755
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627800855755
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627800855755
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627800855755
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627800855755
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |=<) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                      |j $ {} (:text |8) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                      |r $ {} (:text |nil) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627800855755
                    :by |rJG4IHzWf
                  |x $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                              |j $ {} (:text |ui/expand) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627800855755
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627800855755
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:color) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |hsl) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                              |j $ {} (:text |0) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                              |r $ {} (:text |0) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                              |v $ {} (:text |70) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627800855755
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627800855755
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:font-size) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                          |j $ {} (:text |10) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627800855755
                                        :by |rJG4IHzWf
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |:line-height) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"16px") (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627800855755
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627800855755
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627800855755
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627800855755
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |<>) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                              |j $ {} (:text "|\"她他它") (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627800855755
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627800855755
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627800855755
                    :by |rJG4IHzWf
                :type :expr
                :at 1627800855755
                :by |rJG4IHzWf
            :type :expr
            :at 1627800855755
            :by |rJG4IHzWf
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |app.comp.container) (:type :leaf) (:at 1499755354983) (:by |root)
            |v $ {}
              :data $ {}
                |yT $ {}
                  :data $ {}
                    |j $ {} (:text |respo-md.comp.md) (:type :leaf) (:at 1519699092590) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1519699093410) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |comp-md) (:type :leaf) (:at 1519699096732) (:by |root)
                      :type :expr
                      :at 1519699093683
                      :by |root
                  :type :expr
                  :at 1519699088529
                  :by |root
                |yj $ {}
                  :data $ {}
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1527788377809) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1521954064826) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |dev?) (:type :leaf) (:at 1521954067604) (:by |root)
                      :type :expr
                      :at 1521954065004
                      :by |root
                  :type :expr
                  :at 1521954061310
                  :by |root
                |yr $ {}
                  :data $ {}
                    |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801025495) (:text |memof.alias)
                    |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801025495) (:text |:refer)
                    |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627801025495)
                      :data $ {}
                        |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801025495) (:text |memof-call)
                  :type :expr
                  :at 1627801025495
                  :by |rJG4IHzWf
                |T $ {} (:text |:require) (:type :leaf) (:at 1499755354983) (:by |root)
                |r $ {}
                  :data $ {}
                    |j $ {} (:text |respo-ui.core) (:type :leaf) (:at 1516527080962) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {} (:text |ui) (:type :leaf) (:at 1499755354983) (:by |root)
                  :type :expr
                  :at 1499755354983
                |t $ {}
                  :data $ {}
                    |T $ {} (:text |respo-ui.core) (:type :leaf) (:at 1627800946723) (:by |rJG4IHzWf)
                    |j $ {} (:text |:refer) (:type :leaf) (:at 1627800948063) (:by |rJG4IHzWf)
                    |r $ {}
                      :data $ {}
                        |T $ {} (:text |hsl) (:type :leaf) (:at 1627800950177) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1627800948672
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1627800943709
                  :by |rJG4IHzWf
                |v $ {}
                  :data $ {}
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1540958704705) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1508946162679) (:by |root)
                    |v $ {}
                      :data $ {}
                        |xT $ {} (:text |textarea) (:type :leaf) (:at 1512359490531) (:by |rJG4IHzWf)
                        |yT $ {} (:text |input) (:type :leaf) (:at 1552321107012) (:by |rJG4IHzWf)
                        |yj $ {} (:text |list->) (:type :leaf) (:at 1627800962129) (:by |rJG4IHzWf)
                        |j $ {} (:text |defcomp) (:type :leaf) (:at 1499755354983) (:by |root)
                        |l $ {} (:text |defeffect) (:type :leaf) (:at 1573355389740) (:by |rJG4IHzWf)
                        |r $ {} (:text |<>) (:type :leaf) (:at 1499755354983) (:by |root)
                        |t $ {} (:text |>>) (:type :leaf) (:at 1584780606618) (:by |rJG4IHzWf)
                        |v $ {} (:text |div) (:type :leaf) (:at 1499755354983) (:by |root)
                        |x $ {} (:text |button) (:type :leaf) (:at 1499755354983) (:by |root)
                        |y $ {} (:text |span) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |x $ {}
                  :data $ {}
                    |j $ {} (:text |respo.comp.space) (:type :leaf) (:at 1499755354983) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |=<) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |y $ {}
                  :data $ {}
                    |j $ {} (:text |reel.comp.reel) (:type :leaf) (:at 1507461855480) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507461856264) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |comp-reel) (:type :leaf) (:at 1507461858342) (:by |root)
                      :type :expr
                      :at 1507461856484
                      :by |root
                  :type :expr
                  :at 1507461845717
                  :by |root
              :type :expr
              :at 1499755354983
          :type :expr
          :at 1499755354983
      |app.schema $ {}
        :defs $ {}
          |store $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |store) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |{}) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:states) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1499755354983) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:cursor) (:type :leaf) (:at 1584781007054) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1584781007486) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584781007287
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1584781004285
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1499755354983
                    :type :expr
                    :at 1499755354983
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:messages) (:type :leaf) (:at 1627801120060) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |[]) (:type :leaf) (:at 1627801120688) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627801120433
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627801118011
                    :by |rJG4IHzWf
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |app.schema) (:type :leaf) (:at 1499755354983) (:by |root)
          :type :expr
          :at 1499755354983
      |app.updater $ {}
        :defs $ {}
          |updater $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |updater) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |store) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |op) (:type :leaf) (:at 1499755354983) (:by |root)
                  |r $ {} (:text |data) (:type :leaf) (:at 1584874633844) (:by |rJG4IHzWf)
                  |v $ {} (:text |op-id) (:type :leaf) (:at 1519489491135) (:by |root)
                  |x $ {} (:text |op-time) (:type :leaf) (:at 1519489492110) (:by |root)
                :type :expr
                :at 1499755354983
              |v $ {}
                :data $ {}
                  |T $ {} (:text |case-default) (:type :leaf) (:at 1627801079668) (:by |rJG4IHzWf)
                  |j $ {} (:text |op) (:type :leaf) (:at 1499755354983) (:by |root)
                  |l $ {}
                    :data $ {}
                      |T $ {} (:text |do) (:type :leaf) (:at 1627801080839) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |println) (:type :leaf) (:at 1627801084785) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"unknown op:") (:type :leaf) (:at 1627801089483) (:by |rJG4IHzWf)
                          |r $ {} (:text |op) (:type :leaf) (:at 1627801092273) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627801081247
                        :by |rJG4IHzWf
                      |r $ {} (:text |store) (:type :leaf) (:at 1627801094463) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627801080463
                    :by |rJG4IHzWf
                  |n $ {}
                    :data $ {}
                      |T $ {} (:text |:states) (:type :leaf) (:at 1507399855618) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |update-states) (:type :leaf) (:at 1584874626558) (:by |rJG4IHzWf)
                          |j $ {} (:text |store) (:type :leaf) (:at 1584874628374) (:by |rJG4IHzWf)
                          |r $ {} (:text |data) (:type :leaf) (:at 1584874632002) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1584874625235
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1507399852251
                    :by |root
                  |t $ {}
                    :data $ {}
                      |T $ {} (:text |:hydrate-storage) (:type :leaf) (:at 1518157657108) (:by |root)
                      |j $ {} (:text |data) (:type :leaf) (:at 1584874637339) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1518157547521
                    :by |root
                  |w $ {}
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801136982) (:text |:message)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801136982) (:text |update)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801136982) (:text |store)
                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801136982) (:text |:messages)
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1627801136982) (:by |rJG4IHzWf)
                              |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627801136982)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801136982) (:text |xs)
                              |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627801136982)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801136982) (:text |conj)
                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801136982) (:text |xs)
                                  |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801136982) (:text |data)
                            :type :expr
                            :at 1627801136982
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627801136982
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627801136982
                    :by |rJG4IHzWf
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |app.updater) (:type :leaf) (:at 1499755354983) (:by |root)
            |r $ {}
              :data $ {}
                |T $ {} (:text |:require) (:type :leaf) (:at 1584874616480) (:by |rJG4IHzWf)
                |j $ {}
                  :data $ {}
                    |j $ {} (:text |respo.cursor) (:type :leaf) (:at 1584874620034) (:by |rJG4IHzWf)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1584874621356) (:by |rJG4IHzWf)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |update-states) (:type :leaf) (:at 1584874623096) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1584874621524
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1584874616720
                  :by |rJG4IHzWf
              :type :expr
              :at 1584874614885
              :by |rJG4IHzWf
          :type :expr
          :at 1499755354983
      |app.main $ {}
        :defs $ {}
          |render-app! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1499755354983
              |v $ {}
                :data $ {}
                  |T $ {} (:text |render!) (:type :leaf) (:at 1624469436438) (:by |rJG4IHzWf)
                  |j $ {} (:text |mount-target) (:type :leaf) (:at 1499755354983) (:by |root)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {} (:text |@*reel) (:type :leaf) (:at 1507400119272) (:by |root)
                    :type :expr
                    :at 1499755354983
                  |v $ {} (:text |dispatch!) (:type :leaf) (:at 1623915174985) (:by |rJG4IHzWf)
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
          |persist-storage! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1533919517365) (:by |rJG4IHzWf)
              |j $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1533919515671
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |.!setItem) (:type :leaf) (:at 1623915179125) (:by |rJG4IHzWf)
                  |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956703087) (:by |rJG4IHzWf)
                      |j $ {} (:text |config/site) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1533919515671
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |format-cirru-edn) (:type :leaf) (:at 1624469402829) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:store) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                          |j $ {} (:text |@*reel) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1533919515671
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1533919515671
                    :by |rJG4IHzWf
                :type :expr
                :at 1533919515671
                :by |rJG4IHzWf
            :type :expr
            :at 1533919515671
            :by |rJG4IHzWf
          |mount-target $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |mount-target) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |.!querySelector) (:type :leaf) (:at 1624469553191) (:by |rJG4IHzWf)
                  |j $ {} (:text |js/document) (:type :leaf) (:at 1499755354983) (:by |root)
                  |r $ {} (:text ||.app) (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
          |*reel $ {}
            :data $ {}
              |T $ {} (:text |defatom) (:type :leaf) (:at 1610792986987) (:by |rJG4IHzWf)
              |j $ {} (:text |*reel) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |D $ {} (:text |->) (:type :leaf) (:at 1507399778895) (:by |root)
                  |T $ {} (:text |reel-schema/reel) (:type :leaf) (:at 1507399776350) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |assoc) (:type :leaf) (:at 1507399781682) (:by |root)
                      |j $ {} (:text |:base) (:type :leaf) (:at 1507401405076) (:by |root)
                      |r $ {} (:text |schema/store) (:type :leaf) (:at 1507399787471) (:by |root)
                    :type :expr
                    :at 1507399779656
                    :by |root
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |assoc) (:type :leaf) (:at 1507399781682) (:by |root)
                      |j $ {} (:text |:store) (:type :leaf) (:at 1507399793097) (:by |root)
                      |r $ {} (:text |schema/store) (:type :leaf) (:at 1507399787471) (:by |root)
                    :type :expr
                    :at 1507399779656
                    :by |root
                :type :expr
                :at 1507399777531
                :by |root
            :type :expr
            :at 1499755354983
          |main! $ {}
            :data $ {}
              |yD $ {}
                :data $ {}
                  |T $ {} (:text |listen-devtools!) (:type :leaf) (:at 1507461739167) (:by |root)
                  |j $ {} (:text ||k) (:type :leaf) (:at 1624007376825) (:by |rJG4IHzWf)
                  |r $ {} (:text |dispatch!) (:type :leaf) (:at 1507461693919) (:by |root)
                :type :expr
                :at 1507461684494
                :by |root
              |yL $ {}
                :data $ {}
                  |D $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801239401) (:text |;)
                  |T $ {} (:text |.!addEventListener) (:type :leaf) (:at 1624469377233) (:by |rJG4IHzWf)
                  |j $ {} (:text |js/window) (:type :leaf) (:at 1518157453505) (:by |root)
                  |r $ {} (:text ||beforeunload) (:type :leaf) (:at 1518157458163) (:by |root)
                  |v $ {}
                    :data $ {}
                      |D $ {} (:text |fn) (:type :leaf) (:at 1612344222204) (:by |rJG4IHzWf)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |event) (:type :leaf) (:at 1612344223520) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1612344222530
                        :by |rJG4IHzWf
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1612344224533
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1612344221583
                    :by |rJG4IHzWf
                :type :expr
                :at 1518157357847
                :by |root
              |yN $ {}
                :data $ {}
                  |D $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801236655) (:text |;)
                  |T $ {} (:text |repeat!) (:type :leaf) (:at 1544956062322) (:by |rJG4IHzWf)
                  |b $ {} (:text |60) (:type :leaf) (:at 1544956066171) (:by |rJG4IHzWf)
                  |j $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919535136) (:by |rJG4IHzWf)
                :type :expr
                :at 1533919529874
                :by |rJG4IHzWf
              |yP $ {}
                :data $ {}
                  |D $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627801223444) (:text |;)
                  |T $ {} (:text |let) (:type :leaf) (:at 1518157495438) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |raw) (:type :leaf) (:at 1518157496930) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |.!getItem) (:type :leaf) (:at 1623915188297) (:by |rJG4IHzWf)
                              |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1518157504638) (:by |root)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956709260) (:by |rJG4IHzWf)
                                  |j $ {} (:text |config/site) (:type :leaf) (:at 1527788293499) (:by |root)
                                :type :expr
                                :at 1518157506313
                                :by |root
                            :type :expr
                            :at 1518157497615
                            :by |root
                        :type :expr
                        :at 1518157495826
                        :by |root
                    :type :expr
                    :at 1518157495644
                    :by |root
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |when) (:type :leaf) (:at 1533919640958) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |some?) (:type :leaf) (:at 1518157515786) (:by |root)
                          |j $ {} (:text |raw) (:type :leaf) (:at 1518157516878) (:by |root)
                        :type :expr
                        :at 1518157515117
                        :by |root
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |dispatch!) (:type :leaf) (:at 1518157523818) (:by |root)
                          |j $ {} (:text |:hydrate-storage) (:type :leaf) (:at 1518157669936) (:by |root)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1624469412598) (:by |rJG4IHzWf)
                              |j $ {} (:text |raw) (:type :leaf) (:at 1518157531240) (:by |root)
                            :type :expr
                            :at 1518157527987
                            :by |root
                        :type :expr
                        :at 1518157521635
                        :by |root
                    :type :expr
                    :at 1518157514334
                    :by |root
                :type :expr
                :at 1518157492640
                :by |root
              |yT $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text "||App started.") (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |main!) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1499755354983
              |t $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1544874434638) (:by |rJG4IHzWf)
                  |j $ {} (:text "|\"Running mode:") (:type :leaf) (:at 1544874509800) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |if) (:type :leaf) (:at 1544874440190) (:by |rJG4IHzWf)
                      |j $ {} (:text |config/dev?) (:type :leaf) (:at 1544874446442) (:by |rJG4IHzWf)
                      |r $ {} (:text "|\"dev") (:type :leaf) (:at 1544874449063) (:by |rJG4IHzWf)
                      |v $ {} (:text "|\"release") (:type :leaf) (:at 1544874452316) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1544874440404
                    :by |rJG4IHzWf
                :type :expr
                :at 1544874433785
                :by |rJG4IHzWf
              |x $ {}
                :data $ {}
                  |T $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
              |y $ {}
                :data $ {}
                  |T $ {} (:text |add-watch) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |*reel) (:type :leaf) (:at 1507399915531) (:by |root)
                  |r $ {} (:text |:changes) (:type :leaf) (:at 1499755354983) (:by |root)
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |reel) (:type :leaf) (:at 1612280609284) (:by |rJG4IHzWf)
                          |j $ {} (:text |prev) (:type :leaf) (:at 1612280610651) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1499755354983
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root)
                        :type :expr
                        :at 1499755354983
                    :type :expr
                    :at 1499755354983
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
          |dispatch! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |dispatch!) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |op) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |op-data) (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
              |t $ {}
                :data $ {}
                  |D $ {} (:text |when) (:type :leaf) (:at 1547437687530) (:by |root)
                  |L $ {}
                    :data $ {}
                      |D $ {} (:text |and) (:type :leaf) (:at 1584874662518) (:by |rJG4IHzWf)
                      |T $ {} (:text |config/dev?) (:type :leaf) (:at 1547437691006) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |not=) (:type :leaf) (:at 1584874664551) (:by |rJG4IHzWf)
                          |j $ {} (:text |op) (:type :leaf) (:at 1584874665829) (:by |rJG4IHzWf)
                          |r $ {} (:text |:states) (:type :leaf) (:at 1584874671745) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1584874663522
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1584874661674
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |j $ {} (:text |println) (:type :leaf) (:at 1518156276516) (:by |root)
                      |r $ {} (:text "|\"Dispatch:") (:type :leaf) (:at 1547437698992) (:by |root)
                      |v $ {} (:text |op) (:type :leaf) (:at 1518156280471) (:by |root)
                    :type :expr
                    :at 1518156274050
                    :by |root
                :type :expr
                :at 1547437686766
                :by |root
              |v $ {}
                :data $ {}
                  |T $ {} (:text |reset!) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |*reel) (:type :leaf) (:at 1507399899641) (:by |root)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |reel-updater) (:type :leaf) (:at 1507399887573) (:by |root)
                      |j $ {} (:text |updater) (:type :leaf) (:at 1507399888500) (:by |root)
                      |r $ {} (:text |@*reel) (:type :leaf) (:at 1507399891576) (:by |root)
                      |v $ {} (:text |op) (:type :leaf) (:at 1507399892687) (:by |root)
                      |x $ {} (:text |op-data) (:type :leaf) (:at 1507399894594) (:by |root)
                    :type :expr
                    :at 1507399884621
                    :by |root
                :type :expr
                :at 1584780634192
                :by |rJG4IHzWf
            :type :expr
            :at 1499755354983
          |reload! $ {}
            :data $ {}
              |D $ {} (:text |defn) (:type :leaf) (:at 1626201153853) (:by |rJG4IHzWf)
              |L $ {} (:text |reload!) (:type :leaf) (:at 1626201157449) (:by |rJG4IHzWf)
              |P $ {}
                :data $ {}
                :type :expr
                :at 1626201163076
                :by |rJG4IHzWf
              |T $ {}
                :data $ {}
                  |D $ {} (:text |if) (:type :leaf) (:at 1626201192115) (:by |rJG4IHzWf)
                  |L $ {}
                    :data $ {}
                      |T $ {} (:text |nil?) (:type :leaf) (:at 1626201534497) (:by |rJG4IHzWf)
                      |j $ {} (:text |build-errors) (:type :leaf) (:at 1626201194806) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1626201192626
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |do) (:type :leaf) (:at 1626201161775) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |remove-watch) (:type :leaf) (:at 1614750747553) (:by |rJG4IHzWf)
                          |j $ {} (:text |*reel) (:type :leaf) (:at 1614750747553) (:by |rJG4IHzWf)
                          |r $ {} (:text |:changes) (:type :leaf) (:at 1614750747553) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1614750747553
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |clear-cache!) (:type :leaf) (:at 1507461702453) (:by |root)
                        :type :expr
                        :at 1507461699387
                        :by |root
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |add-watch) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                          |j $ {} (:text |*reel) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                          |r $ {} (:text |:changes) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |reel) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                                  |j $ {} (:text |prev) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1612280627439
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |render-app!) (:type :leaf) (:at 1612280627439) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1612280627439
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1612280627439
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1612280627439
                        :by |rJG4IHzWf
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |reset!) (:type :leaf) (:at 1507461706990) (:by |root)
                          |j $ {} (:text |*reel) (:type :leaf) (:at 1507461708965) (:by |root)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |refresh-reel) (:type :leaf) (:at 1507461730190) (:by |root)
                              |j $ {} (:text |@*reel) (:type :leaf) (:at 1507461719097) (:by |root)
                              |r $ {} (:text |schema/store) (:type :leaf) (:at 1507461721870) (:by |root)
                              |v $ {} (:text |updater) (:type :leaf) (:at 1507461722724) (:by |root)
                            :type :expr
                            :at 1507461710020
                            :by |root
                        :type :expr
                        :at 1507461704162
                        :by |root
                      |y $ {}
                        :data $ {}
                          |T $ {} (:text |hud!) (:type :leaf) (:at 1626777542168) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"ok~") (:type :leaf) (:at 1626777542168) (:by |rJG4IHzWf)
                          |r $ {} (:text "|\"Ok") (:type :leaf) (:at 1626777542168) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1626777542168
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1626201164538
                    :by |rJG4IHzWf
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |hud!) (:type :leaf) (:at 1626290831868) (:by |rJG4IHzWf)
                      |b $ {} (:text "|\"error") (:type :leaf) (:at 1626290930377) (:by |rJG4IHzWf)
                      |j $ {} (:text |build-errors) (:type :leaf) (:at 1626201209903) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1626201203433
                    :by |rJG4IHzWf
                :type :expr
                :at 1626201191606
                :by |rJG4IHzWf
            :type :expr
            :at 1626201152815
            :by |rJG4IHzWf
          |repeat! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1610793045335) (:by |rJG4IHzWf)
              |j $ {} (:text |repeat!) (:type :leaf) (:at 1610793045335) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |duration) (:type :leaf) (:at 1610793047914) (:by |rJG4IHzWf)
                  |j $ {} (:text |cb) (:type :leaf) (:at 1610793055850) (:by |rJG4IHzWf)
                :type :expr
                :at 1610793045335
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |js/setTimeout) (:type :leaf) (:at 1610793066184) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1610793079545) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                        :type :expr
                        :at 1610793080160
                        :by |rJG4IHzWf
                      |n $ {}
                        :data $ {}
                          |T $ {} (:text |cb) (:type :leaf) (:at 1610793091010) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1610793090420
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |repeat!) (:type :leaf) (:at 1610793083422) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |*) (:type :leaf) (:at 1610794352418) (:by |rJG4IHzWf)
                              |j $ {} (:text |1000) (:type :leaf) (:at 1610794467961) (:by |rJG4IHzWf)
                              |r $ {} (:text |duration) (:type :leaf) (:at 1610794352418) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1610794352418
                            :by |rJG4IHzWf
                          |r $ {} (:text |cb) (:type :leaf) (:at 1610794361837) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1610793080941
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1610793079106
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |*) (:type :leaf) (:at 1610793072002) (:by |rJG4IHzWf)
                      |L $ {} (:text |1000) (:type :leaf) (:at 1610794470143) (:by |rJG4IHzWf)
                      |T $ {} (:text |duration) (:type :leaf) (:at 1610793071233) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1610793071391
                    :by |rJG4IHzWf
                :type :expr
                :at 1610793056606
                :by |rJG4IHzWf
            :type :expr
            :at 1610793045335
            :by |rJG4IHzWf
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |app.main) (:type :leaf) (:at 1499755354983) (:by |root)
            |r $ {}
              :data $ {}
                |yyT $ {}
                  :data $ {}
                    |T $ {} (:text "|\"./calcit.build-errors") (:type :leaf) (:at 1626201180939) (:by |rJG4IHzWf)
                    |j $ {} (:text |:default) (:type :leaf) (:at 1626201183958) (:by |rJG4IHzWf)
                    |r $ {} (:text |build-errors) (:type :leaf) (:at 1626201187310) (:by |rJG4IHzWf)
                  :type :expr
                  :at 1626201173819
                  :by |rJG4IHzWf
                |yyj $ {}
                  :data $ {}
                    |T $ {} (:text "|\"bottom-tip") (:type :leaf) (:at 1626290810913) (:by |rJG4IHzWf)
                    |j $ {} (:text |:default) (:type :leaf) (:at 1626290816153) (:by |rJG4IHzWf)
                    |r $ {} (:text |hud!) (:type :leaf) (:at 1626290825711) (:by |rJG4IHzWf)
                  :type :expr
                  :at 1626290808117
                  :by |rJG4IHzWf
                |yT $ {}
                  :data $ {}
                    |j $ {} (:text |app.schema) (:type :leaf) (:at 1499755354983) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {} (:text |schema) (:type :leaf) (:at 1499755354983) (:by |root)
                  :type :expr
                  :at 1499755354983
                |yj $ {}
                  :data $ {}
                    |j $ {} (:text |reel.util) (:type :leaf) (:at 1507399678694) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507399680625) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |listen-devtools!) (:type :leaf) (:at 1518156292092) (:by |root)
                      :type :expr
                      :at 1507399680857
                      :by |root
                  :type :expr
                  :at 1507399674125
                  :by |root
                |yr $ {}
                  :data $ {}
                    |j $ {} (:text |reel.core) (:type :leaf) (:at 1507399687162) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507399688098) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |reel-updater) (:type :leaf) (:at 1507399691010) (:by |root)
                        |q $ {} (:text |refresh-reel) (:type :leaf) (:at 1518156288482) (:by |root)
                      :type :expr
                      :at 1507399688322
                      :by |root
                  :type :expr
                  :at 1507399683930
                  :by |root
                |yv $ {}
                  :data $ {}
                    |j $ {} (:text |reel.schema) (:type :leaf) (:at 1507399717674) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1507399755750) (:by |root)
                    |v $ {} (:text |reel-schema) (:type :leaf) (:at 1507399757678) (:by |root)
                  :type :expr
                  :at 1507399715229
                  :by |root
                |yy $ {}
                  :data $ {}
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1527788304925) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1527788306048) (:by |root)
                    |v $ {} (:text |config) (:type :leaf) (:at 1527788306884) (:by |root)
                  :type :expr
                  :at 1527788302920
                  :by |root
                |T $ {} (:text |:require) (:type :leaf) (:at 1499755354983) (:by |root)
                |j $ {}
                  :data $ {}
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1499755354983) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |render!) (:type :leaf) (:at 1499755354983) (:by |root)
                        |r $ {} (:text |clear-cache!) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |v $ {}
                  :data $ {}
                    |j $ {} (:text |app.comp.container) (:type :leaf) (:at 1499755354983) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |y $ {}
                  :data $ {}
                    |j $ {} (:text |app.updater) (:type :leaf) (:at 1508556737455) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |updater) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
              :type :expr
              :at 1499755354983
          :type :expr
          :at 1499755354983
      |app.config $ {}
        :defs $ {}
          |dev? $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1544873875614) (:by |rJG4IHzWf)
              |j $ {} (:text |dev?) (:type :leaf) (:at 1544873875614) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |5 $ {} (:text |=) (:type :leaf) (:at 1624469715390) (:by |rJG4IHzWf)
                  |D $ {} (:text "|\"dev") (:type :leaf) (:at 1624469714304) (:by |rJG4IHzWf)
                  |T $ {}
                    :data $ {}
                      |D $ {} (:text |get-env) (:type :leaf) (:at 1624469706777) (:by |rJG4IHzWf)
                      |T $ {} (:text "|\"mode") (:type :leaf) (:at 1624469708397) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1624469701389
                    :by |rJG4IHzWf
                :type :expr
                :at 1624469709435
                :by |rJG4IHzWf
            :type :expr
            :at 1544873875614
            :by |rJG4IHzWf
          |site $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1518157345496) (:by |root)
              |j $ {} (:text |site) (:type :leaf) (:at 1518157327696) (:by |root)
              |r $ {}
                :data $ {}
                  |yf $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956719115) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"hestory") (:type :leaf) (:at 1627801246675) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1544956719115
                    :by |rJG4IHzWf
                  |T $ {} (:text |{}) (:type :leaf) (:at 1518157346643) (:by |root)
                :type :expr
                :at 1518157327696
                :by |root
            :type :expr
            :at 1545933382603
            :by |root
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1527788237503
          :by |root
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1527788237503) (:by |root)
            |j $ {} (:text |app.config) (:type :leaf) (:at 1527788237503) (:by |root)
          :type :expr
          :at 1527788237503
          :by |root
  :users $ {}
    |root $ {} (:avatar nil) (:name |root) (:nickname |root) (:id |root) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
    |rJG4IHzWf $ {} (:avatar nil) (:name |chen) (:nickname |chen) (:id |rJG4IHzWf) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
