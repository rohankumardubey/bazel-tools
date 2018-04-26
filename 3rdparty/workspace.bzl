# This file is generated by sync-deps, do not edit!
load("@bazel_tools//tools/build_defs/repo:java.bzl", "java_import_external")
load("@io_bazel_rules_scala//scala:scala_maven_import_external.bzl", "scala_import_external")

MAVEN_RESOLVERS = ["https://repo.maven.apache.org/maven2/"]

def default_maven_callback(name, licenses, jar_path, jar_sha256, srcjar_path=None, srcjar_sha256=None, deps=[], runtime_deps=[], neverlink=False, is_scala=False):
  if is_scala:
    macro = scala_import_external
  else:
    macro = java_import_external

  macro(
      name=name,
      licenses=licenses,
      jar_urls=[resolver + jar_path for resolver in MAVEN_RESOLVERS],
      jar_sha256=jar_sha256,
      srcjar_urls=[] if srcjar_path == None else [resolver + srcjar_path for resolver in MAVEN_RESOLVERS],
      srcjar_sha256=srcjar_sha256,
      deps=["@" + d for d in deps],
      runtime_deps=runtime_deps,
      neverlink=neverlink,
      default_visibility=["//visibility:public"],
  )

def maven_dependencies(callback=None):
  if callback == None:
    callback = default_maven_callback
  callback(name="ch_qos_logback_logback_classic", licenses=["notice"], jar_path="ch/qos/logback/logback-classic/1.2.3/logback-classic-1.2.3.jar", jar_sha256="fb53f8539e7fcb8f093a56e138112056ec1dc809ebb020b59d8a36a5ebac37e0", srcjar_path=None, srcjar_sha256=None, deps=["ch_qos_logback_logback_core", "org_slf4j_slf4j_api"], neverlink=False, is_scala=False)
  callback(name="ch_qos_logback_logback_core", licenses=["notice"], jar_path="ch/qos/logback/logback-core/1.2.3/logback-core-1.2.3.jar", jar_sha256="5946d837fe6f960c02a53eda7a6926ecc3c758bbdd69aa453ee429f858217f22", srcjar_path=None, srcjar_sha256=None, deps=[], neverlink=False, is_scala=False)
  callback(name="com_fasterxml_jackson_core_jackson_annotations", licenses=["notice"], jar_path="com/fasterxml/jackson/core/jackson-annotations/2.9.1/jackson-annotations-2.9.1.jar", jar_sha256="029834aefc1649b08d32ab0fdc333142075001e842260beed40f0e5f4714c5e8", srcjar_path=None, srcjar_sha256=None, deps=[], neverlink=False, is_scala=False)
  callback(name="com_fasterxml_jackson_core_jackson_core", licenses=["notice"], jar_path="com/fasterxml/jackson/core/jackson-core/2.9.1/jackson-core-2.9.1.jar", jar_sha256="782e7efa27452f76f7e1191c166613bfbec785ac73ffb5504d323f07f3b1700e", srcjar_path=None, srcjar_sha256=None, deps=[], neverlink=False, is_scala=False)
  callback(name="com_fasterxml_jackson_core_jackson_databind", licenses=["notice"], jar_path="com/fasterxml/jackson/core/jackson-databind/2.9.1/jackson-databind-2.9.1.jar", jar_sha256="17b28ec21ae487bb9a0570b6c0ec66b2277d47546d4089c3a5a2b3e60054134c", srcjar_path=None, srcjar_sha256=None, deps=["com_fasterxml_jackson_core_jackson_annotations", "com_fasterxml_jackson_core_jackson_core"], neverlink=False, is_scala=False)
  callback(name="com_fasterxml_jackson_dataformat_jackson_dataformat_yaml", licenses=["notice"], jar_path="com/fasterxml/jackson/dataformat/jackson-dataformat-yaml/2.9.1/jackson-dataformat-yaml-2.9.1.jar", jar_sha256="90076e7b5292b08f68ab74218a9a115a7b71f5782849c26ed4d725fdc2ff96c2", srcjar_path=None, srcjar_sha256=None, deps=["com_fasterxml_jackson_core_jackson_core", "org_yaml_snakeyaml"], neverlink=False, is_scala=False)
  callback(name="com_fasterxml_jackson_datatype_jackson_datatype_guava", licenses=["notice"], jar_path="com/fasterxml/jackson/datatype/jackson-datatype-guava/2.9.1/jackson-datatype-guava-2.9.1.jar", jar_sha256="95bcc6c50f00467d6447888cfb5b8cf40c7a9bd6afb0b9f5035136aa09df493a", srcjar_path=None, srcjar_sha256=None, deps=["com_fasterxml_jackson_core_jackson_core", "com_fasterxml_jackson_core_jackson_databind", "com_google_guava_guava"], neverlink=False, is_scala=False)
  callback(name="com_geirsson_metaconfig_core_2_12", licenses=["notice"], jar_path="com/geirsson/metaconfig-core_2.12/0.4.0/metaconfig-core_2.12-0.4.0.jar", jar_sha256="6bd25189a12b1edbf1511c44783e611a9edd738841901b9243803ff9c696c78a", srcjar_path=None, srcjar_sha256=None, deps=["com_lihaoyi_sourcecode_2_12", "org_scala_lang_scala_library", "org_scalameta_common_2_12", "org_scalameta_inputs_2_12", "org_scalameta_io_2_12"], neverlink=False, is_scala=True)
  callback(name="com_geirsson_metaconfig_typesafe_config_2_12", licenses=["notice"], jar_path="com/geirsson/metaconfig-typesafe-config_2.12/0.4.0/metaconfig-typesafe-config_2.12-0.4.0.jar", jar_sha256="e8f6f38738a96c4c09dbf5e5c687000556a0920b63e8e4fc19bb6cbc6d8dcfbd", srcjar_path=None, srcjar_sha256=None, deps=["com_geirsson_metaconfig_core_2_12", "com_lihaoyi_sourcecode_2_12", "com_typesafe_config", "org_scala_lang_scala_library", "org_scalameta_common_2_12", "org_scalameta_inputs_2_12", "org_scalameta_io_2_12"], neverlink=False, is_scala=True)
  callback(name="com_geirsson_scalafmt_core_2_12", licenses=["notice"], jar_path="com/geirsson/scalafmt-core_2.12/1.3.0/scalafmt-core_2.12-1.3.0.jar", jar_sha256="3f6f4a1076660d3434fe424603f0ea95cc07a8c96cb07cfb3df8a9eb83fb90e0", srcjar_path=None, srcjar_sha256=None, deps=["com_geirsson_metaconfig_core_2_12", "com_geirsson_metaconfig_typesafe_config_2_12", "com_google_protobuf_protobuf_java", "com_lihaoyi_fastparse_utils_2_12", "com_lihaoyi_fastparse_2_12", "com_lihaoyi_scalaparse_2_12", "com_lihaoyi_sourcecode_2_12", "com_trueaccord_lenses_lenses_2_12", "com_trueaccord_scalapb_scalapb_runtime_2_12", "org_scala_lang_scala_library", "org_scalameta_common_2_12", "org_scalameta_dialects_2_12", "org_scalameta_inline_2_12", "org_scalameta_inputs_2_12", "org_scalameta_parsers_2_12", "org_scalameta_quasiquotes_2_12", "org_scalameta_scalameta_2_12", "org_scalameta_semantic_2_12", "org_scalameta_tokenizers_2_12", "org_scalameta_tokens_2_12", "org_scalameta_transversers_2_12", "org_scalameta_trees_2_12"], neverlink=False, is_scala=True)
  callback(name="com_github_tomas_langer_chalk", licenses=["notice"], jar_path="com/github/tomas-langer/chalk/1.0.2/chalk-1.0.2.jar", jar_sha256="1bbdca6337a288e28a650e50d0121cfad69065b4ef9ff19c2974e5e78cee5eb6", srcjar_path=None, srcjar_sha256=None, deps=["org_fusesource_hawtjni_hawtjni_runtime", "org_fusesource_jansi_jansi_native"], neverlink=False, is_scala=False)
  callback(name="com_google_auto_value_auto_value", licenses=["notice"], jar_path="com/google/auto/value/auto-value/1.5.1/auto-value-1.5.1.jar", jar_sha256="c1dfbf9e22ceead14d88ff69c209deb5966b1e7d5c1d151569e243e5633a1ee1", srcjar_path=None, srcjar_sha256=None, deps=[], neverlink=False, is_scala=False)
  callback(name="com_google_code_findbugs_annotations", licenses=["notice"], jar_path="com/google/code/findbugs/annotations/3.0.1/annotations-3.0.1.jar", jar_sha256="6b47ff0a6de0ce17cbedc3abb0828ca5bce3009d53ea47b3723ff023c4742f79", srcjar_path=None, srcjar_sha256=None, deps=["com_google_code_findbugs_jsr305", "net_jcip_jcip_annotations"], neverlink=False, is_scala=False)
  callback(name="com_google_code_findbugs_jsr305", licenses=["notice"], jar_path="com/google/code/findbugs/jsr305/3.0.2/jsr305-3.0.2.jar", jar_sha256="766ad2a0783f2687962c8ad74ceecc38a28b9f72a2d085ee438b7813e928d0c7", srcjar_path=None, srcjar_sha256=None, deps=[], neverlink=False, is_scala=False)
  callback(name="com_google_errorprone_error_prone_annotations", licenses=["notice"], jar_path="com/google/errorprone/error_prone_annotations/2.3.0/error_prone_annotations-2.3.0.jar", jar_sha256="524b43ea15ca97c68f10d5f417c4068dc88144b620d2203f0910441a769fd42f", srcjar_path=None, srcjar_sha256=None, deps=[], neverlink=False, is_scala=False)
  callback(name="com_google_errorprone_javac_shaded", licenses=["notice"], jar_path="com/google/errorprone/javac-shaded/9-dev-r4023-3/javac-shaded-9-dev-r4023-3.jar", jar_sha256="65bfccf60986c47fbc17c9ebab0be626afc41741e0a6ec7109e0768817a36f30", srcjar_path=None, srcjar_sha256=None, deps=[], neverlink=False, is_scala=False)
  callback(name="com_google_googlejavaformat_google_java_format", licenses=["notice"], jar_path="com/google/googlejavaformat/google-java-format/1.4/google-java-format-1.4.jar", jar_sha256="39d18ec9ab610097074bf49e971285488eaf5d0bc2369df0a0d5a3f9f9de2faa", srcjar_path=None, srcjar_sha256=None, deps=["com_google_errorprone_javac_shaded", "com_google_guava_guava"], neverlink=False, is_scala=False)
  callback(name="com_google_guava_guava", licenses=["notice"], jar_path="com/google/guava/guava/23.2-jre/guava-23.2-jre.jar", jar_sha256="5be9a7d05ba0ccd74708bc8018ae412255f85843c0b92302e9b9befa6ed52564", srcjar_path=None, srcjar_sha256=None, deps=["com_google_code_findbugs_jsr305", "com_google_errorprone_error_prone_annotations", "com_google_j2objc_j2objc_annotations", "org_codehaus_mojo_animal_sniffer_annotations"], neverlink=False, is_scala=False)
  callback(name="com_google_j2objc_j2objc_annotations", licenses=["notice"], jar_path="com/google/j2objc/j2objc-annotations/1.1/j2objc-annotations-1.1.jar", jar_sha256="2994a7eb78f2710bd3d3bfb639b2c94e219cedac0d4d084d516e78c16dddecf6", srcjar_path=None, srcjar_sha256=None, deps=[], neverlink=False, is_scala=False)
  callback(name="com_google_jimfs_jimfs", licenses=["notice"], jar_path="com/google/jimfs/jimfs/1.0/jimfs-1.0.jar", jar_sha256="b1d8bd55390b8859933e099ef3298b589081aa185c71645f4c7666982f10b714", srcjar_path=None, srcjar_sha256=None, deps=["com_google_guava_guava"], neverlink=False, is_scala=False)
  callback(name="com_google_protobuf_protobuf_java", licenses=["notice"], jar_path="com/google/protobuf/protobuf-java/3.5.0/protobuf-java-3.5.0.jar", jar_sha256="49a3c7b3781d4b7b2d15063e125824260c9b46bdb62494b63b367b661fdb2b26", srcjar_path=None, srcjar_sha256=None, deps=[], neverlink=False, is_scala=False)
  callback(name="com_lihaoyi_fastparse_utils_2_12", licenses=["notice"], jar_path="com/lihaoyi/fastparse-utils_2.12/0.4.2/fastparse-utils_2.12-0.4.2.jar", jar_sha256="0da40d3c89d3f7009ac2f6e32b11d8cdd379b40a2f09ce08669b4695f558e101", srcjar_path=None, srcjar_sha256=None, deps=["com_lihaoyi_sourcecode_2_12", "org_scala_lang_scala_library"], neverlink=False, is_scala=False)
  callback(name="com_lihaoyi_fastparse_2_12", licenses=["notice"], jar_path="com/lihaoyi/fastparse_2.12/0.4.2/fastparse_2.12-0.4.2.jar", jar_sha256="43f57787179e902137167ba107e665272a0764f1addb3f452136f15bad5b21a8", srcjar_path=None, srcjar_sha256=None, deps=["com_lihaoyi_fastparse_utils_2_12", "com_lihaoyi_sourcecode_2_12", "org_scala_lang_scala_library"], neverlink=False, is_scala=False)
  callback(name="com_lihaoyi_scalaparse_2_12", licenses=["notice"], jar_path="com/lihaoyi/scalaparse_2.12/0.4.2/scalaparse_2.12-0.4.2.jar", jar_sha256="148c9ea912639404faef7c8e607260787384ae9a2973120c71e440f78c3b5082", srcjar_path=None, srcjar_sha256=None, deps=["com_lihaoyi_fastparse_utils_2_12", "com_lihaoyi_fastparse_2_12", "com_lihaoyi_sourcecode_2_12", "org_scala_lang_scala_library"], neverlink=False, is_scala=False)
  callback(name="com_lihaoyi_sourcecode_2_12", licenses=["notice"], jar_path="com/lihaoyi/sourcecode_2.12/0.1.3/sourcecode_2.12-0.1.3.jar", jar_sha256="3ba3aca0d46496a3304798db8c8d79eedbdf29846b988a0a65207cc13408deca", srcjar_path=None, srcjar_sha256=None, deps=["org_scala_lang_scala_library"], neverlink=False, is_scala=False)
  callback(name="com_squareup_okio_okio", licenses=["notice"], jar_path="com/squareup/okio/okio/1.13.0/okio-1.13.0.jar", jar_sha256="734269c3ebc5090e3b23566db558f421f0b4027277c79ad5d176b8ec168bb850", srcjar_path=None, srcjar_sha256=None, deps=[], neverlink=False, is_scala=False)
  callback(name="com_trueaccord_lenses_lenses_2_12", licenses=["notice"], jar_path="com/trueaccord/lenses/lenses_2.12/0.4.10/lenses_2.12-0.4.10.jar", jar_sha256="2c4d6218d81eb682927ddccb386c8c3577e4cdf098130fc25bae4c9f9d312e16", srcjar_path=None, srcjar_sha256=None, deps=["org_scala_lang_scala_library"], neverlink=False, is_scala=False)
  callback(name="com_trueaccord_scalapb_scalapb_runtime_2_12", licenses=["notice"], jar_path="com/trueaccord/scalapb/scalapb-runtime_2.12/0.6.0-pre2/scalapb-runtime_2.12-0.6.0-pre2.jar", jar_sha256="07bc456f05bb654db0cae9361bd6240d5892f3066534fd5e46b6922f2cbdb1c7", srcjar_path=None, srcjar_sha256=None, deps=["com_google_protobuf_protobuf_java", "com_lihaoyi_fastparse_utils_2_12", "com_lihaoyi_fastparse_2_12", "com_lihaoyi_sourcecode_2_12", "com_trueaccord_lenses_lenses_2_12", "org_scala_lang_scala_library"], neverlink=False, is_scala=False)
  callback(name="com_typesafe_config", licenses=["notice"], jar_path="com/typesafe/config/1.2.1/config-1.2.1.jar", jar_sha256="c160fbd78f51a0c2375a794e435ce2112524a6871f64d0331895e9e26ee8b9ee", srcjar_path=None, srcjar_sha256=None, deps=[], neverlink=False, is_scala=False)
  callback(name="net_jcip_jcip_annotations", licenses=["notice"], jar_path="net/jcip/jcip-annotations/1.0/jcip-annotations-1.0.jar", jar_sha256="be5805392060c71474bf6c9a67a099471274d30b83eef84bfc4e0889a4f1dcc0", srcjar_path=None, srcjar_sha256=None, deps=[], neverlink=False, is_scala=False)
  callback(name="net_sf_jopt_simple_jopt_simple", licenses=["notice"], jar_path="net/sf/jopt-simple/jopt-simple/5.0.3/jopt-simple-5.0.3.jar", jar_sha256="6f45c00908265947c39221035250024f2caec9a15c1c8cf553ebeecee289f342", srcjar_path=None, srcjar_sha256=None, deps=[], neverlink=False, is_scala=False)
  callback(name="org_apache_ivy_ivy", licenses=["notice"], jar_path="org/apache/ivy/ivy/2.4.0/ivy-2.4.0.jar", jar_sha256="ce81cb234406b093b5b8de9f6f5b2a50ed0824d6a235891353e8d3e941a53970", srcjar_path=None, srcjar_sha256=None, deps=[], neverlink=False, is_scala=False)
  callback(name="org_codehaus_mojo_animal_sniffer_annotations", licenses=["notice"], jar_path="org/codehaus/mojo/animal-sniffer-annotations/1.14/animal-sniffer-annotations-1.14.jar", jar_sha256="2068320bd6bad744c3673ab048f67e30bef8f518996fa380033556600669905d", srcjar_path=None, srcjar_sha256=None, deps=[], neverlink=False, is_scala=False)
  callback(name="org_fusesource_hawtjni_hawtjni_runtime", licenses=["notice"], jar_path="org/fusesource/hawtjni/hawtjni-runtime/1.16/hawtjni-runtime-1.16.jar", jar_sha256="4113e23bbca34aae17df9de7f5f715dbab9bbee045547e7799861fc24a2475c7", srcjar_path=None, srcjar_sha256=None, deps=[], neverlink=False, is_scala=False)
  callback(name="org_fusesource_jansi_jansi_native", licenses=["notice"], jar_path="org/fusesource/jansi/jansi-native/1.8/jansi-native-1.8.jar", jar_sha256="6f0a1df7421c14c00d20dd88ba7bece0ab2b090dbcce1d11a8cfc6076fe3c096", srcjar_path=None, srcjar_sha256=None, deps=["org_fusesource_hawtjni_hawtjni_runtime"], neverlink=False, is_scala=False)
  callback(name="org_hamcrest_java_hamcrest", licenses=["notice"], jar_path="org/hamcrest/java-hamcrest/2.0.0.0/java-hamcrest-2.0.0.0.jar", jar_sha256="09bc7044d57a497846e2480250e7a72ff3ae58efefc8c3a9ceecd0f4e092851c", srcjar_path=None, srcjar_sha256=None, deps=[], neverlink=False, is_scala=False)
  callback(name="org_scala_lang_scala_compiler", licenses=["notice"], jar_path="org/scala-lang/scala-compiler/2.12.5/scala-compiler-2.12.5.jar", jar_sha256="a113394b6f857e69ef5d95b77114ec3f12cb0e14d9ede32de0bbc9c36d677455", srcjar_path=None, srcjar_sha256=None, deps=["org_scala_lang_scala_library", "org_scala_lang_scala_reflect", "org_scala_lang_modules_scala_xml_2_12"], neverlink=False, is_scala=False)
  callback(name="org_scala_lang_scala_library", licenses=["notice"], jar_path="org/scala-lang/scala-library/2.12.5/scala-library-2.12.5.jar", jar_sha256="c2636320d6479c82f2da6b8d76a820de9345a61327e648d4298a0048154fb87c", srcjar_path=None, srcjar_sha256=None, deps=[], neverlink=False, is_scala=False)
  callback(name="org_scala_lang_scala_reflect", licenses=["notice"], jar_path="org/scala-lang/scala-reflect/2.12.5/scala-reflect-2.12.5.jar", jar_sha256="27036d7574afff72294f0e63d54aa13acd8b16b525d51475691118b835e626e7", srcjar_path=None, srcjar_sha256=None, deps=["org_scala_lang_scala_library"], neverlink=False, is_scala=False)
  callback(name="org_scala_lang_modules_scala_xml_2_12", licenses=["notice"], jar_path="org/scala-lang/modules/scala-xml_2.12/1.0.6/scala-xml_2.12-1.0.6.jar", jar_sha256="7cc3b6ceb56e879cb977e8e043f4bfe2e062f78795efd7efa09f85003cb3230a", srcjar_path=None, srcjar_sha256=None, deps=["org_scala_lang_scala_library"], neverlink=False, is_scala=False)
  callback(name="org_scalameta_common_2_12", licenses=["notice"], jar_path="org/scalameta/common_2.12/1.7.0/common_2.12-1.7.0.jar", jar_sha256="87445943f1dff51a063b95660ed0bf5b3f2d28a9260aa7c38cfec7d1b684e826", srcjar_path=None, srcjar_sha256=None, deps=["com_lihaoyi_sourcecode_2_12", "org_scala_lang_scala_library"], neverlink=False, is_scala=False)
  callback(name="org_scalameta_dialects_2_12", licenses=["notice"], jar_path="org/scalameta/dialects_2.12/1.7.0/dialects_2.12-1.7.0.jar", jar_sha256="14cb63ebdae50463ef00dd4c3c07dfcb1b5aa7a30b3fc744046010a568f023e8", srcjar_path=None, srcjar_sha256=None, deps=["org_scala_lang_scala_library", "org_scalameta_common_2_12"], neverlink=False, is_scala=False)
  callback(name="org_scalameta_inline_2_12", licenses=["notice"], jar_path="org/scalameta/inline_2.12/1.7.0/inline_2.12-1.7.0.jar", jar_sha256="34af09bc3946dc00a276b54f790ffa2ba6ce40fc695dfa3cac74af2ea4416788", srcjar_path=None, srcjar_sha256=None, deps=["org_scala_lang_scala_library", "org_scalameta_inputs_2_12"], neverlink=False, is_scala=False)
  callback(name="org_scalameta_inputs_2_12", licenses=["notice"], jar_path="org/scalameta/inputs_2.12/1.7.0/inputs_2.12-1.7.0.jar", jar_sha256="2f8582bba795c8997ea44210fb9c32b97e8e617336f10f01a3f85d206af2efe6", srcjar_path=None, srcjar_sha256=None, deps=["com_lihaoyi_sourcecode_2_12", "org_scala_lang_scala_library", "org_scalameta_common_2_12", "org_scalameta_io_2_12"], neverlink=False, is_scala=False)
  callback(name="org_scalameta_io_2_12", licenses=["notice"], jar_path="org/scalameta/io_2.12/1.7.0/io_2.12-1.7.0.jar", jar_sha256="7884cf043a6ad61b36352e42a4c6b4c9eace83ebaed54d8072725710009ddc58", srcjar_path=None, srcjar_sha256=None, deps=["org_scala_lang_scala_library"], neverlink=False, is_scala=False)
  callback(name="org_scalameta_parsers_2_12", licenses=["notice"], jar_path="org/scalameta/parsers_2.12/1.7.0/parsers_2.12-1.7.0.jar", jar_sha256="fc1625dfe09ec108fda13d39f681a6499876f55f4763ddb124d3275e7084d340", srcjar_path=None, srcjar_sha256=None, deps=["com_lihaoyi_fastparse_utils_2_12", "com_lihaoyi_fastparse_2_12", "com_lihaoyi_scalaparse_2_12", "com_lihaoyi_sourcecode_2_12", "org_scala_lang_scala_library", "org_scalameta_common_2_12", "org_scalameta_dialects_2_12", "org_scalameta_inputs_2_12", "org_scalameta_tokenizers_2_12", "org_scalameta_tokens_2_12", "org_scalameta_trees_2_12"], neverlink=False, is_scala=False)
  callback(name="org_scalameta_quasiquotes_2_12", licenses=["notice"], jar_path="org/scalameta/quasiquotes_2.12/1.7.0/quasiquotes_2.12-1.7.0.jar", jar_sha256="d3a7144f273dfdeaa21afdfaf437739fd3622855d82d0eead37c3236be25b8fc", srcjar_path=None, srcjar_sha256=None, deps=["com_lihaoyi_fastparse_utils_2_12", "com_lihaoyi_fastparse_2_12", "com_lihaoyi_scalaparse_2_12", "com_lihaoyi_sourcecode_2_12", "org_scala_lang_scala_library", "org_scalameta_common_2_12", "org_scalameta_dialects_2_12", "org_scalameta_inputs_2_12", "org_scalameta_parsers_2_12", "org_scalameta_tokenizers_2_12", "org_scalameta_tokens_2_12", "org_scalameta_trees_2_12"], neverlink=False, is_scala=False)
  callback(name="org_scalameta_scalameta_2_12", licenses=["notice"], jar_path="org/scalameta/scalameta_2.12/1.7.0/scalameta_2.12-1.7.0.jar", jar_sha256="a981b3a6180912bd33f1ec92bb3a880c452f1eb491f9e456e80d4ac527a7f7c2", srcjar_path=None, srcjar_sha256=None, deps=["com_google_protobuf_protobuf_java", "com_lihaoyi_fastparse_utils_2_12", "com_lihaoyi_fastparse_2_12", "com_lihaoyi_scalaparse_2_12", "com_lihaoyi_sourcecode_2_12", "com_trueaccord_lenses_lenses_2_12", "com_trueaccord_scalapb_scalapb_runtime_2_12", "org_scala_lang_scala_library", "org_scalameta_common_2_12", "org_scalameta_dialects_2_12", "org_scalameta_inline_2_12", "org_scalameta_inputs_2_12", "org_scalameta_parsers_2_12", "org_scalameta_quasiquotes_2_12", "org_scalameta_semantic_2_12", "org_scalameta_tokenizers_2_12", "org_scalameta_tokens_2_12", "org_scalameta_transversers_2_12", "org_scalameta_trees_2_12"], neverlink=False, is_scala=False)
  callback(name="org_scalameta_semantic_2_12", licenses=["notice"], jar_path="org/scalameta/semantic_2.12/1.7.0/semantic_2.12-1.7.0.jar", jar_sha256="475788dca2cb7f3b53391c65b23885b8bbb8c3c8c932bce178e8e185ba4d012a", srcjar_path=None, srcjar_sha256=None, deps=["com_google_protobuf_protobuf_java", "com_lihaoyi_fastparse_utils_2_12", "com_lihaoyi_fastparse_2_12", "com_lihaoyi_sourcecode_2_12", "com_trueaccord_lenses_lenses_2_12", "com_trueaccord_scalapb_scalapb_runtime_2_12", "org_scala_lang_scala_library", "org_scalameta_common_2_12", "org_scalameta_dialects_2_12", "org_scalameta_inputs_2_12", "org_scalameta_tokenizers_2_12", "org_scalameta_tokens_2_12", "org_scalameta_trees_2_12"], neverlink=False, is_scala=False)
  callback(name="org_scalameta_tokenizers_2_12", licenses=["notice"], jar_path="org/scalameta/tokenizers_2.12/1.7.0/tokenizers_2.12-1.7.0.jar", jar_sha256="5057840f62c90eb4cba66b97f6b8815a8f757ba214481668cbc3998b01b0cb7a", srcjar_path=None, srcjar_sha256=None, deps=["com_lihaoyi_fastparse_utils_2_12", "com_lihaoyi_fastparse_2_12", "com_lihaoyi_scalaparse_2_12", "com_lihaoyi_sourcecode_2_12", "org_scala_lang_scala_library", "org_scalameta_common_2_12", "org_scalameta_dialects_2_12", "org_scalameta_inputs_2_12", "org_scalameta_tokens_2_12"], neverlink=False, is_scala=False)
  callback(name="org_scalameta_tokens_2_12", licenses=["notice"], jar_path="org/scalameta/tokens_2.12/1.7.0/tokens_2.12-1.7.0.jar", jar_sha256="8dc25ef61eb7ef76e5ecf25f897e8d835f10d6451c33a0fe3b2fd2b31c7d7bf8", srcjar_path=None, srcjar_sha256=None, deps=["org_scala_lang_scala_library", "org_scalameta_common_2_12", "org_scalameta_dialects_2_12", "org_scalameta_inputs_2_12"], neverlink=False, is_scala=False)
  callback(name="org_scalameta_transversers_2_12", licenses=["notice"], jar_path="org/scalameta/transversers_2.12/1.7.0/transversers_2.12-1.7.0.jar", jar_sha256="b45fe5f0284ec77737778831685f43d5b434121a88c488ff1ec6e82e53eb5536", srcjar_path=None, srcjar_sha256=None, deps=["org_scala_lang_scala_library", "org_scalameta_common_2_12", "org_scalameta_dialects_2_12", "org_scalameta_inputs_2_12", "org_scalameta_tokenizers_2_12", "org_scalameta_tokens_2_12", "org_scalameta_trees_2_12"], neverlink=False, is_scala=False)
  callback(name="org_scalameta_trees_2_12", licenses=["notice"], jar_path="org/scalameta/trees_2.12/1.7.0/trees_2.12-1.7.0.jar", jar_sha256="68e115214da0ff306e5bd7e1333680dddb51f72fd5783fe8a686c829208ef84c", srcjar_path=None, srcjar_sha256=None, deps=["com_lihaoyi_fastparse_utils_2_12", "com_lihaoyi_fastparse_2_12", "com_lihaoyi_scalaparse_2_12", "com_lihaoyi_sourcecode_2_12", "org_scala_lang_scala_library", "org_scalameta_common_2_12", "org_scalameta_dialects_2_12", "org_scalameta_inputs_2_12", "org_scalameta_tokenizers_2_12", "org_scalameta_tokens_2_12"], neverlink=False, is_scala=False)
  callback(name="org_slf4j_slf4j_api", licenses=["notice"], jar_path="org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar", jar_sha256="18c4a0095d5c1da6b817592e767bb23d29dd2f560ad74df75ff3961dbde25b79", srcjar_path=None, srcjar_sha256=None, deps=[], neverlink=False, is_scala=False)
  callback(name="org_yaml_snakeyaml", licenses=["notice"], jar_path="org/yaml/snakeyaml/1.18/snakeyaml-1.18.jar", jar_sha256="81bf4c29d0275dace75fadb5febf5384553422816256023efa83b2b15a9ced60", srcjar_path=None, srcjar_sha256=None, deps=[], neverlink=False, is_scala=False)
