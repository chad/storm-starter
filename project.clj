(defproject storm-starter "0.0.1-SNAPSHOT"
  :source-path "src/clj"
  :java-source-path "src/jvm"
  :javac-options {:debug "true" :fork "true"}
  :resources-path "multilang"
  :aot :all
  :repositories {
;;                 "twitter4j" "http://twitter4j.org/maven2"
                 }

  :dependencies [
;;                 [org.twitter4j/twitter4j-core "2.2.6-SNAPSHOT"]
;;                 [org.twitter4j/twitter4j-stream "2.2.6-SNAPSHOT"]
                   [commons-collections/commons-collections "3.2.1"]
                   [com.rapportive/storm-amqp-spout "0.1.4"]
                   [com.rabbitmq/amqp-client "3.0.1"]
                 ]

  :dev-dependencies [[storm "0.8.2-wip18"]
                     [org.clojure/clojure "1.4.0"]
                     ])

