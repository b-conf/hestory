
{}
  :configs $ {} (:reload-fn |app.main/reload!) (:port 6001) (:output |src) (:compact-output? true) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/compact.cirru |lilac/compact.cirru |memof/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |reel.calcit/compact.cirru
    :init-fn |app.main/main!
    :extension |.cljs
  :ir $ {} (:package |app)
    :files $ {}
      |app.comp.container $ {}
        :defs $ {}
          |read-content $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627814811826) (:by |rJG4IHzWf)
              |j $ {} (:text |read-content) (:type :leaf) (:at 1627814811826) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |messages) (:type :leaf) (:at 1627815083227) (:by |rJG4IHzWf)
                  |j $ {} (:text |d!) (:type :leaf) (:at 1627814811826) (:by |rJG4IHzWf)
                :type :expr
                :at 1627814811826
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |D $ {} (:text |when) (:type :leaf) (:at 1627815102175) (:by |rJG4IHzWf)
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |not) (:type :leaf) (:at 1627815305605) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |empty?) (:type :leaf) (:at 1627815089378) (:by |rJG4IHzWf)
                          |j $ {} (:text |messages) (:type :leaf) (:at 1627815090973) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627815085222
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627815084357
                    :by |rJG4IHzWf
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |let) (:type :leaf) (:at 1627815109905) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |msg) (:type :leaf) (:at 1627815114865) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |first) (:type :leaf) (:at 1627815116985) (:by |rJG4IHzWf)
                                  |j $ {} (:text |messages) (:type :leaf) (:at 1627815120665) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627815115160
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627815110646
                            :by |rJG4IHzWf
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |text) (:type :leaf) (:at 1627815185000) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:text) (:type :leaf) (:at 1627815186885) (:by |rJG4IHzWf)
                                  |j $ {} (:text |msg) (:type :leaf) (:at 1627815187429) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627815185257
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627815184033
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627815110470
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |d!) (:type :leaf) (:at 1627815157705) (:by |rJG4IHzWf)
                          |j $ {} (:text |:message) (:type :leaf) (:at 1627815171068) (:by |rJG4IHzWf)
                          |r $ {} (:text |msg) (:type :leaf) (:at 1627817691524) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627815127522
                        :by |rJG4IHzWf
                      |s $ {}
                        :data $ {}
                          |D $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829580786) (:text |;)
                          |T $ {} (:text |println) (:type :leaf) (:at 1627815419007) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"read") (:type :leaf) (:at 1627815420362) (:by |rJG4IHzWf)
                          |r $ {} (:text |text) (:type :leaf) (:at 1627815421855) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627815416212
                        :by |rJG4IHzWf
                      |t $ {}
                        :data $ {}
                          |T $ {} (:text |scroll-view!) (:type :leaf) (:at 1627815200049) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627815192606
                        :by |rJG4IHzWf
                      |u $ {}
                        :data $ {}
                          |T $ {} (:text |speech!) (:type :leaf) (:at 1627815235467) (:by |rJG4IHzWf)
                          |j $ {} (:text |text) (:type :leaf) (:at 1627815240156) (:by |rJG4IHzWf)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1627815297406) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                :type :expr
                                :at 1627815299206
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |read-content) (:type :leaf) (:at 1627815300355) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |rest) (:type :leaf) (:at 1627815300355) (:by |rJG4IHzWf)
                                      |j $ {} (:text |messages) (:type :leaf) (:at 1627815300355) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627815300355
                                    :by |rJG4IHzWf
                                  |r $ {} (:text |d!) (:type :leaf) (:at 1627815300355) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627815300355
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627815297155
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627815232142
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627815102935
                    :by |rJG4IHzWf
                :type :expr
                :at 1627815095246
                :by |rJG4IHzWf
            :type :expr
            :at 1627814811826
            :by |rJG4IHzWf
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
                      |D $ {} (:text |div) (:type :leaf) (:at 1627814311595) (:by |rJG4IHzWf)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1627814317111) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1627814317111) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |merge) (:type :leaf) (:at 1627814317111) (:by |rJG4IHzWf)
                                  |j $ {} (:text |ui/global) (:type :leaf) (:at 1627814317111) (:by |rJG4IHzWf)
                                  |r $ {} (:text |ui/fullscreen) (:type :leaf) (:at 1627814317111) (:by |rJG4IHzWf)
                                  |v $ {} (:text |ui/row) (:type :leaf) (:at 1627814339632) (:by |rJG4IHzWf)
                                  |x $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1627819120810) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:background-color) (:type :leaf) (:at 1627819124262) (:by |rJG4IHzWf)
                                          |j $ {} (:text |:white) (:type :leaf) (:at 1627819125061) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627819121119
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627819120492
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627814317111
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627814317111
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627814317111
                        :by |rJG4IHzWf
                      |P $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1627814319663) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627814320262) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1627814327737) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1627814329875) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:width) (:type :leaf) (:at 1627814331624) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"40%") (:type :leaf) (:at 1627814375204) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627814330162
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:border) (:type :leaf) (:at 1627814344645) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |str) (:type :leaf) (:at 1627814346868) (:by |rJG4IHzWf)
                                              |j $ {} (:text "|\"1px solid ") (:type :leaf) (:at 1627814350635) (:by |rJG4IHzWf)
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |hsl) (:type :leaf) (:at 1627814352750) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |0) (:type :leaf) (:at 1627814353125) (:by |rJG4IHzWf)
                                                  |r $ {} (:text |0) (:type :leaf) (:at 1627814353415) (:by |rJG4IHzWf)
                                                  |v $ {} (:text |80) (:type :leaf) (:at 1627814358455) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627814351717
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627814345602
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627814342729
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627814329557
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627814326726
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627814319923
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |D $ {} (:text |memof-call) (:type :leaf) (:at 1627814542716) (:by |rJG4IHzWf)
                              |T $ {} (:text |comp-menu) (:type :leaf) (:at 1627814534601) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627814530913
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627814318592
                        :by |rJG4IHzWf
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
                                      |h $ {} (:text |ui/expand) (:type :leaf) (:at 1627814385536) (:by |rJG4IHzWf)
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
                    :at 1627814310861
                    :by |rJG4IHzWf
                :type :expr
                :at 1507461832154
                :by |root
            :type :expr
            :at 1499755354983
          |comp-menu $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1627814545999) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-menu) (:type :leaf) (:at 1627814537001) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1627814537001
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |div) (:type :leaf) (:at 1627814548552) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1627814550385) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1627817975914) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627817976453) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:padding) (:type :leaf) (:at 1627817978162) (:by |rJG4IHzWf)
                                  |j $ {} (:text |16) (:type :leaf) (:at 1627817979754) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627817976807
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627817976150
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627817975100
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627814548791
                    :by |rJG4IHzWf
                  |n $ {}
                    :data $ {}
                      |T $ {} (:text |list->) (:type :leaf) (:at 1627829667649) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1627829669346) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627829668419
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |->) (:type :leaf) (:at 1627829850874) (:by |rJG4IHzWf)
                          |j $ {} (:text |reading-list) (:type :leaf) (:at 1627829853793) (:by |rJG4IHzWf)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |map) (:type :leaf) (:at 1627829854985) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1627829858856) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |info) (:type :leaf) (:at 1627829864714) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627829859507
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |[]) (:type :leaf) (:at 1627829866426) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:id) (:type :leaf) (:at 1627829867376) (:by |rJG4IHzWf)
                                          |j $ {} (:text |info) (:type :leaf) (:at 1627829867838) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627829866910
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829871976) (:text |div)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829871976) (:text |{})
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829871976) (:text |:on-click)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829871976) (:text |fn)
                                                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627829871976)
                                                        :data $ {}
                                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829871976) (:text |e)
                                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829871976) (:text |d!)
                                                      |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627829871976)
                                                        :data $ {}
                                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829871976) (:text |js/window.speechSynthesis.cancel)
                                                      |v $ {}
                                                        :data $ {}
                                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829871976) (:text |read-content)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829871976) (:text |:messages)
                                                              |j $ {} (:text |info) (:type :leaf) (:at 1627829883020) (:by |rJG4IHzWf)
                                                            :type :expr
                                                            :at 1627829871976
                                                            :by |rJG4IHzWf
                                                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829871976) (:text |d!)
                                                        :type :expr
                                                        :at 1627829871976
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1627829871976
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1627829871976
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627829871976
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829871976) (:text |<>)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:title) (:type :leaf) (:at 1627829878906) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |info) (:type :leaf) (:at 1627829879395) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627829878152
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627829871976
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627829871976
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627829866139
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627829857968
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627829854162
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627829669755
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627829666516
                    :by |rJG4IHzWf
                :type :expr
                :at 1627814548010
                :by |rJG4IHzWf
            :type :expr
            :at 1627814537001
            :by |rJG4IHzWf
          |speech! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1627815243754) (:by |rJG4IHzWf)
              |j $ {} (:text |speech!) (:type :leaf) (:at 1627815242171) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |text) (:type :leaf) (:at 1627815245662) (:by |rJG4IHzWf)
                  |j $ {} (:text |cb) (:type :leaf) (:at 1627815247254) (:by |rJG4IHzWf)
                :type :expr
                :at 1627815242171
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |sT $ {}
                    :data $ {}
                      |T $ {} (:text |js/window.speechSynthesis.speak) (:type :leaf) (:at 1627816643403) (:by |rJG4IHzWf)
                      |j $ {} (:text |t) (:type :leaf) (:at 1627816643403) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627816643403
                    :by |rJG4IHzWf
                  |T $ {} (:text |let) (:type :leaf) (:at 1627815250050) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |t) (:type :leaf) (:at 1627815251587) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |new) (:type :leaf) (:at 1627815256015) (:by |rJG4IHzWf)
                              |T $ {} (:text |js/window.SpeechSynthesisUtterance) (:type :leaf) (:at 1627815254539) (:by |rJG4IHzWf)
                              |j $ {} (:text |text) (:type :leaf) (:at 1627815257459) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627815253080
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627815250533
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627815250361
                    :by |rJG4IHzWf
                  |n $ {}
                    :data $ {}
                      |T $ {} (:text |set!) (:type :leaf) (:at 1627815653073) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |.-lang) (:type :leaf) (:at 1627815656190) (:by |rJG4IHzWf)
                          |j $ {} (:text |t) (:type :leaf) (:at 1627815657493) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627815655116
                        :by |rJG4IHzWf
                      |r $ {} (:text "|\"zh-cn") (:type :leaf) (:at 1627815661570) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627815651793
                    :by |rJG4IHzWf
                  |p $ {}
                    :data $ {}
                      |T $ {} (:text |set!) (:type :leaf) (:at 1627815692381) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |.-rate) (:type :leaf) (:at 1627815697066) (:by |rJG4IHzWf)
                          |j $ {} (:text |t) (:type :leaf) (:at 1627815697726) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627815692802
                        :by |rJG4IHzWf
                      |r $ {} (:text |1.2) (:type :leaf) (:at 1627815724519) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627815691538
                    :by |rJG4IHzWf
                  |s $ {}
                    :data $ {}
                      |D $ {} (:text |let) (:type :leaf) (:at 1627816548618) (:by |rJG4IHzWf)
                      |L $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |vs) (:type :leaf) (:at 1627816549442) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |D $ {} (:text |.!filter) (:type :leaf) (:at 1627816571158) (:by |rJG4IHzWf)
                                  |T $ {}
                                    :data $ {}
                                      |T $ {} (:text |js/window.speechSynthesis.getVoices) (:type :leaf) (:at 1627816557450) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627816557450
                                    :by |rJG4IHzWf
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1627816572444) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |v) (:type :leaf) (:at 1627816573743) (:by |rJG4IHzWf)
                                          |j $ {} (:text |i) (:type :leaf) (:at 1627816624756) (:by |rJG4IHzWf)
                                          |r $ {} (:text |a) (:type :leaf) (:at 1627816630911) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627816572709
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |.!includes) (:type :leaf) (:at 1627816580173) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |D $ {} (:text |.-lang) (:type :leaf) (:at 1627816588233) (:by |rJG4IHzWf)
                                              |T $ {} (:text |v) (:type :leaf) (:at 1627816582417) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627816582675
                                            :by |rJG4IHzWf
                                          |r $ {} (:text "|\"zh") (:type :leaf) (:at 1627816591708) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627816574416
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627816572131
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627816562356
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627816549071
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627816548880
                        :by |rJG4IHzWf
                      |P $ {}
                        :data $ {}
                          |T $ {} (:text |js/console.log) (:type :leaf) (:at 1627816598450) (:by |rJG4IHzWf)
                          |b $ {} (:text "|\"Voices") (:type :leaf) (:at 1627816603253) (:by |rJG4IHzWf)
                          |j $ {} (:text |vs) (:type :leaf) (:at 1627816599526) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627816595600
                        :by |rJG4IHzWf
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |set!) (:type :leaf) (:at 1627816202277) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |.-voice) (:type :leaf) (:at 1627816204132) (:by |rJG4IHzWf)
                              |j $ {} (:text |t) (:type :leaf) (:at 1627816205576) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627816202689
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |D $ {} (:text |w-js-log) (:type :leaf) (:at 1627816243546) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |D $ {} (:text |aget) (:type :leaf) (:at 1627816217709) (:by |rJG4IHzWf)
                                  |T $ {} (:text |vs) (:type :leaf) (:at 1627816606411) (:by |rJG4IHzWf)
                                  |j $ {} (:text |3) (:type :leaf) (:at 1627816668164) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627816216534
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627816240713
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627816201493
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627816548070
                    :by |rJG4IHzWf
                  |t $ {}
                    :data $ {}
                      |D $ {} (:text |set!) (:type :leaf) (:at 1627815934159) (:by |rJG4IHzWf)
                      |T $ {}
                        :data $ {}
                          |D $ {} (:text |.-onend) (:type :leaf) (:at 1627815959125) (:by |rJG4IHzWf)
                          |T $ {} (:text |t) (:type :leaf) (:at 1627815963424) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627815957568
                        :by |rJG4IHzWf
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |fn) (:type :leaf) (:at 1627815937589) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |event) (:type :leaf) (:at 1627815939119) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627815937954
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |js/setTimeout) (:type :leaf) (:at 1627815945185) (:by |rJG4IHzWf)
                              |j $ {} (:text |cb) (:type :leaf) (:at 1627815945185) (:by |rJG4IHzWf)
                              |r $ {} (:text |400) (:type :leaf) (:at 1627815949041) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627815945185
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627815935796
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627815931120
                    :by |rJG4IHzWf
                :type :expr
                :at 1627815247679
                :by |rJG4IHzWf
            :type :expr
            :at 1627815242171
            :by |rJG4IHzWf
          |slurp $ {}
            :data $ {}
              |T $ {} (:text |defmacro) (:type :leaf) (:at 1627814858229) (:by |rJG4IHzWf)
              |j $ {} (:text |slurp) (:type :leaf) (:at 1627814852767) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |path) (:type :leaf) (:at 1627814860021) (:by |rJG4IHzWf)
                :type :expr
                :at 1627814852767
                :by |rJG4IHzWf
              |t $ {}
                :data $ {}
                  |D $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829563114) (:text |;)
                  |T $ {} (:text |println) (:type :leaf) (:at 1627815507425) (:by |rJG4IHzWf)
                  |j $ {} (:text "|\"reading path") (:type :leaf) (:at 1627815509556) (:by |rJG4IHzWf)
                  |r $ {} (:text |path) (:type :leaf) (:at 1627815510363) (:by |rJG4IHzWf)
                :type :expr
                :at 1627815506421
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |read-file) (:type :leaf) (:at 1627814864155) (:by |rJG4IHzWf)
                  |j $ {} (:text |path) (:type :leaf) (:at 1627814865941) (:by |rJG4IHzWf)
                :type :expr
                :at 1627814860597
                :by |rJG4IHzWf
            :type :expr
            :at 1627814852767
            :by |rJG4IHzWf
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
                          |T $ {} (:text |cursor) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:cursor) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                              |j $ {} (:text |states) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627800983771
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627800983771
                        :by |rJG4IHzWf
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |state) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |either) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:data) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627800983771
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:content) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"") (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627800983771
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627800983771
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627800983771
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627800983771
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627800983771
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |merge) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                  |j $ {} (:text |ui/row-middle) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:padding) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"6px 4px") (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627800983771
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:background-color) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |hsl) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                              |j $ {} (:text |0) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                              |r $ {} (:text |0) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                              |v $ {} (:text |97) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627800983771
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627800983771
                                        :by |rJG4IHzWf
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |:border-top) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |str) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                              |j $ {} (:text "|\"1px solid ") (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |hsl) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |0) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                  |r $ {} (:text |0) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                  |v $ {} (:text |90) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627800983771
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627800983771
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627800983771
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627800983771
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627800983771
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627800983771
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627800983771
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |textarea) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |yT $ {}
                                :data $ {}
                                  |T $ {} (:text |:on-keydown) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |e) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                          |j $ {} (:text |d!) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627800983771
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |let) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {}
                                                :data $ {}
                                                  |T $ {} (:text |event) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:event) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |e) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1627800983771
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1627800983771
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627800983771
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |when) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |=) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                  |j $ {} (:text "|\"Enter") (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |.-key) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |event) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1627800983771
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1627800983771
                                                :by |rJG4IHzWf
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |.!preventDefault) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:event) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |e) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1627800983771
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1627800983771
                                                :by |rJG4IHzWf
                                              |v $ {}
                                                :data $ {}
                                                  |T $ {} (:text |d!) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |:message) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |.-value) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |.-target) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |:event) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                              |j $ {} (:text |e) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                            :type :expr
                                                            :at 1627800983771
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1627800983771
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1627800983771
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1627800983771
                                                :by |rJG4IHzWf
                                              |x $ {}
                                                :data $ {}
                                                  |T $ {} (:text |d!) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |cursor) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |assoc) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |state) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                      |r $ {} (:text |:content) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                      |v $ {} (:text "|\"") (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1627800983771
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1627800983771
                                                :by |rJG4IHzWf
                                              |y $ {}
                                                :data $ {}
                                                  |T $ {} (:text |scroll-view!) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627800983771
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627800983771
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627800983771
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627800983771
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627800983771
                                :by |rJG4IHzWf
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:value) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:content) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                      |j $ {} (:text |state) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627800983771
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627800983771
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:placeholder) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"Content") (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627800983771
                                :by |rJG4IHzWf
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |merge) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                      |j $ {} (:text |ui/textarea) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                      |r $ {} (:text |ui/expand) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:height) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                              |j $ {} (:text |40) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627800983771
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:line-height) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                              |j $ {} (:text "|\"24px") (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627800983771
                                            :by |rJG4IHzWf
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |:border) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                              |j $ {} (:text |:none) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627800983771
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627800983771
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627800983771
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627800983771
                                :by |rJG4IHzWf
                              |x $ {}
                                :data $ {}
                                  |T $ {} (:text |:on-input) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |e) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                          |j $ {} (:text |d!) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627800983771
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |d!) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                          |j $ {} (:text |cursor) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |assoc) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                              |j $ {} (:text |state) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                              |r $ {} (:text |:content) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                              |v $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:value) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |e) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627800983771
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627800983771
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627800983771
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627800983771
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627800983771
                                :by |rJG4IHzWf
                              |y $ {}
                                :data $ {}
                                  |T $ {} (:text |:autofocus) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                  |j $ {} (:text |true) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627800983771
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627800983771
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627800983771
                        :by |rJG4IHzWf
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |=<) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                          |j $ {} (:text |6) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                          |r $ {} (:text |nil) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627800983771
                        :by |rJG4IHzWf
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:border) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |str) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                              |j $ {} (:text "|\"2px solid ") (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |hsl) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |200) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                  |r $ {} (:text |80) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                  |v $ {} (:text |60) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627800983771
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627800983771
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627800983771
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:width) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                          |j $ {} (:text |28) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627800983771
                                        :by |rJG4IHzWf
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |:height) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                          |j $ {} (:text |28) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627800983771
                                        :by |rJG4IHzWf
                                      |x $ {}
                                        :data $ {}
                                          |T $ {} (:text |:border-radius) (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"50%") (:type :leaf) (:at 1627800983771) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627800983771
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627800983771
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627800983771
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627800983771
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627800983771
                        :by |rJG4IHzWf
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
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |or) (:type :leaf) (:at 1627815383758) (:by |rJG4IHzWf)
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
          |comp-avatar $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1627828810025) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-avatar) (:type :leaf) (:at 1627828808237) (:by |rJG4IHzWf)
              |n $ {}
                :data $ {}
                  |T $ {} (:text |label) (:type :leaf) (:at 1627828816760) (:by |rJG4IHzWf)
                :type :expr
                :at 1627828811352
                :by |rJG4IHzWf
              |r $ {}
                :data $ {}
                  |D $ {} (:text |[]) (:type :leaf) (:at 1627828830131) (:by |rJG4IHzWf)
                  |L $ {}
                    :data $ {}
                      |T $ {} (:text |effect-render-icon) (:type :leaf) (:at 1627828838533) (:by |rJG4IHzWf)
                      |j $ {} (:text |label) (:type :leaf) (:at 1627829031504) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627828830733
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |D $ {} (:text |div) (:type :leaf) (:at 1627829176157) (:by |rJG4IHzWf)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1627829176957) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829491458) (:text |:style)
                              |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627829491458)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829491458) (:text |{})
                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627829491458)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829491458) (:text |:width)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829491458) (:text |40)
                                  |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627829491458)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829491458) (:text |:height)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829491458) (:text |40)
                                  |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627829491458)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829491458) (:text |:background-color)
                                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627829491458)
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829491458) (:text |hsl)
                                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829491458) (:text |0)
                                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829491458) (:text |0)
                                          |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829491458) (:text |90)
                                  |x $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1627829491458)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829491458) (:text |:border-radius)
                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829491458) (:text "|\"4px")
                            :type :expr
                            :at 1627829491458
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627829176639
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627829173711
                    :by |rJG4IHzWf
                :type :expr
                :at 1627828828884
                :by |rJG4IHzWf
            :type :expr
            :at 1627828808237
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
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1627801007512) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                        :type :expr
                        :at 1627801007512
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |let) (:type :leaf) (:at 1627801007512) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |target) (:type :leaf) (:at 1627801007512) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |js/document.querySelector) (:type :leaf) (:at 1627801007512) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"#message-area") (:type :leaf) (:at 1627801007512) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627801007512
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627801007512
                                :by |rJG4IHzWf
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |last-child) (:type :leaf) (:at 1627801007512) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |if) (:type :leaf) (:at 1627801007512) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |some?) (:type :leaf) (:at 1627801007512) (:by |rJG4IHzWf)
                                          |j $ {} (:text |target) (:type :leaf) (:at 1627801007512) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627801007512
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |.-lastElementChild) (:type :leaf) (:at 1627801007512) (:by |rJG4IHzWf)
                                          |j $ {} (:text |target) (:type :leaf) (:at 1627801007512) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627801007512
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627801007512
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627801007512
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627801007512
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |if) (:type :leaf) (:at 1627801007512) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |some?) (:type :leaf) (:at 1627801007512) (:by |rJG4IHzWf)
                                  |j $ {} (:text |last-child) (:type :leaf) (:at 1627801007512) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627801007512
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |.!scrollIntoViewIfNeeded) (:type :leaf) (:at 1627801007512) (:by |rJG4IHzWf)
                                  |j $ {} (:text |last-child) (:type :leaf) (:at 1627801007512) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627801007512
                                :by |rJG4IHzWf
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |js/console.warn) (:type :leaf) (:at 1627801007512) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"no target") (:type :leaf) (:at 1627801007512) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627801007512
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627801007512
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627801007512
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627801007512
                    :by |rJG4IHzWf
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
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |merge) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                              |j $ {} (:text |ui/row-parted) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:padding) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"4px 6px") (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627800935973
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:font-weight) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                                      |j $ {} (:text |:bold) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627800935973
                                    :by |rJG4IHzWf
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |:font-size) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                                      |j $ {} (:text |16) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627800935973
                                    :by |rJG4IHzWf
                                  |x $ {}
                                    :data $ {}
                                      |T $ {} (:text |:background-color) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |hsl) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                                          |j $ {} (:text |0) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                                          |r $ {} (:text |0) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                                          |v $ {} (:text |97) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627800935973
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627800935973
                                    :by |rJG4IHzWf
                                  |y $ {}
                                    :data $ {}
                                      |T $ {} (:text |:border-bottom) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |str) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"1px solid ") (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |hsl) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                                              |j $ {} (:text |0) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                                              |r $ {} (:text |0) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                                              |v $ {} (:text |90) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627800935973
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627800935973
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627800935973
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627800935973
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627800935973
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627800935973
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |:on-click) (:type :leaf) (:at 1627819015570) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1627819016822) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |e) (:type :leaf) (:at 1627819017991) (:by |rJG4IHzWf)
                                  |j $ {} (:text |d!) (:type :leaf) (:at 1627819018551) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627819017065
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |js/document.body.requestFullscreen) (:type :leaf) (:at 1627819030722) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627819019015
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627819015908
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627819012968
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627800935973
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |<>) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"<") (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627800935973
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |<>) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"Hestory") (:type :leaf) (:at 1627818911973) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627800935973
                    :by |rJG4IHzWf
                  |x $ {}
                    :data $ {}
                      |T $ {} (:text |<>) (:type :leaf) (:at 1627800935973) (:by |rJG4IHzWf)
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
          |reading-list $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1627814822309) (:by |rJG4IHzWf)
              |j $ {} (:text |reading-list) (:type :leaf) (:at 1627829702411) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |[]) (:type :leaf) (:at 1627829829651) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |D $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1627815548879) (:by |rJG4IHzWf)
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |slurp) (:type :leaf) (:at 1627814852232) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"data/000-demo.cirru") (:type :leaf) (:at 1627814840742) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627814830186
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627815545181
                    :by |rJG4IHzWf
                :type :expr
                :at 1627814822309
                :by |rJG4IHzWf
            :type :expr
            :at 1627814822309
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
                      |T $ {} (:text |comp-avatar) (:type :leaf) (:at 1627828808237) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:author) (:type :leaf) (:at 1627828824095) (:by |rJG4IHzWf)
                          |j $ {} (:text |content) (:type :leaf) (:at 1627828825190) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627828819662
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627828818594
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
                                          |j $ {} (:text |12) (:type :leaf) (:at 1627817753433) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1627800855755
                                        :by |rJG4IHzWf
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |:line-height) (:type :leaf) (:at 1627800855755) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"18px") (:type :leaf) (:at 1627817762007) (:by |rJG4IHzWf)
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
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:author) (:type :leaf) (:at 1627817713830) (:by |rJG4IHzWf)
                                  |j $ {} (:text |content) (:type :leaf) (:at 1627817710913) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627817710913
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627800855755
                            :by |rJG4IHzWf
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |div) (:type :leaf) (:at 1627817656548) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1627817657454) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:style) (:type :leaf) (:at 1627817720441) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1627817721396) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:color) (:type :leaf) (:at 1627817723257) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |hsl) (:type :leaf) (:at 1627817724207) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |0) (:type :leaf) (:at 1627817724729) (:by |rJG4IHzWf)
                                                  |r $ {} (:text |0) (:type :leaf) (:at 1627817727982) (:by |rJG4IHzWf)
                                                  |v $ {} (:text |40) (:type :leaf) (:at 1627817726575) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1627817723871
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1627817721567
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:font-size) (:type :leaf) (:at 1627817731785) (:by |rJG4IHzWf)
                                              |j $ {} (:text |16) (:type :leaf) (:at 1627817733156) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627817729610
                                            :by |rJG4IHzWf
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |:line-height) (:type :leaf) (:at 1627817741505) (:by |rJG4IHzWf)
                                              |j $ {} (:text "|\"24px") (:type :leaf) (:at 1627817746285) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1627817737421
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1627817720995
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1627817718785
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627817657077
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |<>) (:type :leaf) (:at 1627817663186) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |D $ {} (:text |:text) (:type :leaf) (:at 1627817708608) (:by |rJG4IHzWf)
                                      |T $ {} (:text |content) (:type :leaf) (:at 1627817664297) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1627817704999
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1627817662714
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1627817654659
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
          |effect-render-icon $ {}
            :data $ {}
              |T $ {} (:text |defeffect) (:type :leaf) (:at 1627828841376) (:by |rJG4IHzWf)
              |j $ {} (:text |effect-render-icon) (:type :leaf) (:at 1627828839409) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |label) (:type :leaf) (:at 1627828846847) (:by |rJG4IHzWf)
                :type :expr
                :at 1627828839409
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |D $ {} (:text |action) (:type :leaf) (:at 1627828858575) (:by |rJG4IHzWf)
                  |L $ {} (:text |el) (:type :leaf) (:at 1627828861017) (:by |rJG4IHzWf)
                  |T $ {} (:text |at?) (:type :leaf) (:at 1627828856231) (:by |rJG4IHzWf)
                :type :expr
                :at 1627828847775
                :by |rJG4IHzWf
              |w $ {}
                :data $ {}
                  |T $ {} (:text |let) (:type :leaf) (:at 1627829297523) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |D $ {}
                        :data $ {}
                          |T $ {} (:text |svg-ns) (:type :leaf) (:at 1627829412114) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"http://www.w3.org/2000/svg") (:type :leaf) (:at 1627829416832) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1627829410669
                        :by |rJG4IHzWf
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |svg) (:type :leaf) (:at 1627829298223) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |js/document.createElementNS) (:type :leaf) (:at 1627829453433) (:by |rJG4IHzWf)
                              |b $ {} (:text |svg-ns) (:type :leaf) (:at 1627829458756) (:by |rJG4IHzWf)
                              |j $ {} (:text "|\"svg") (:type :leaf) (:at 1627829308905) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1627829301008
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1627829300162
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1627829298486
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |.!appendChild) (:type :leaf) (:at 1627829470708) (:by |rJG4IHzWf)
                      |j $ {} (:text |el) (:type :leaf) (:at 1627829472612) (:by |rJG4IHzWf)
                      |r $ {} (:text |svg) (:type :leaf) (:at 1627829476177) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1627829464891
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829483200) (:text |jdenticon/update)
                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829483200) (:text |svg)
                      |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1627829483200) (:text |label)
                    :type :expr
                    :at 1627829483200
                    :by |rJG4IHzWf
                :type :expr
                :at 1627829296520
                :by |rJG4IHzWf
            :type :expr
            :at 1627828839409
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
                    |T $ {} (:text |memof.alias) (:type :leaf) (:at 1627801025495) (:by |rJG4IHzWf)
                    |j $ {} (:text |:refer) (:type :leaf) (:at 1627801025495) (:by |rJG4IHzWf)
                    |r $ {}
                      :data $ {}
                        |T $ {} (:text |memof-call) (:type :leaf) (:at 1627801025495) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1627801025495
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1627801025495
                  :by |rJG4IHzWf
                |yv $ {}
                  :data $ {}
                    |T $ {} (:text "|\"jdenticon") (:type :leaf) (:at 1627828875883) (:by |rJG4IHzWf)
                    |j $ {} (:text |:as) (:type :leaf) (:at 1627828933437) (:by |rJG4IHzWf)
                    |r $ {} (:text |jdenticon) (:type :leaf) (:at 1627828877932) (:by |rJG4IHzWf)
                  :type :expr
                  :at 1627828874067
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
                        |yr $ {} (:text |create-element) (:type :leaf) (:at 1627829112488) (:by |rJG4IHzWf)
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
                      |T $ {} (:text |:message) (:type :leaf) (:at 1627801136982) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |update) (:type :leaf) (:at 1627801136982) (:by |rJG4IHzWf)
                          |j $ {} (:text |store) (:type :leaf) (:at 1627801136982) (:by |rJG4IHzWf)
                          |r $ {} (:text |:messages) (:type :leaf) (:at 1627801136982) (:by |rJG4IHzWf)
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1627801136982) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |xs) (:type :leaf) (:at 1627801136982) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1627801136982
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |conj) (:type :leaf) (:at 1627801136982) (:by |rJG4IHzWf)
                                  |j $ {} (:text |xs) (:type :leaf) (:at 1627801136982) (:by |rJG4IHzWf)
                                  |r $ {} (:text |data) (:type :leaf) (:at 1627801136982) (:by |rJG4IHzWf)
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
                  |D $ {} (:text |;) (:type :leaf) (:at 1627801239401) (:by |rJG4IHzWf)
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
                  |D $ {} (:text |;) (:type :leaf) (:at 1627801236655) (:by |rJG4IHzWf)
                  |T $ {} (:text |repeat!) (:type :leaf) (:at 1544956062322) (:by |rJG4IHzWf)
                  |b $ {} (:text |60) (:type :leaf) (:at 1544956066171) (:by |rJG4IHzWf)
                  |j $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919535136) (:by |rJG4IHzWf)
                :type :expr
                :at 1533919529874
                :by |rJG4IHzWf
              |yP $ {}
                :data $ {}
                  |D $ {} (:text |;) (:type :leaf) (:at 1627801223444) (:by |rJG4IHzWf)
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
              |v $ {}
                :data $ {}
                  |T $ {} (:text |js/window.speechSynthesis.getVoices) (:type :leaf) (:at 1627816364281) (:by |rJG4IHzWf)
                :type :expr
                :at 1627816364281
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
