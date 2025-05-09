import 'package:flutter/material.dart';
import 'package:gradution_project/EachPatternInfo/InfoPatterns.dart';
import 'package:gradution_project/EachPatternInfo/PatternsStructure.dart';
import 'package:gradution_project/EachPatternInfo/TabPatterns.dart';
import 'package:gradution_project/EachPatternInfo/TabsColumn.dart';
import 'package:gradution_project/EachPatternInfo/TabsListView.dart';

class Estj extends StatelessWidget {
  const Estj({super.key});

  @override
  Widget build(BuildContext context) {
    return const Patternsstructure(Childs: [
      Infopatterns(
          text1: 'ESTJ',
          text2: 'تنفيذي',
          text3:
              '''شخصيات التنفيذيين ممثلة للتقاليد والنظام، وذلك بإعمال فهمهم لما هو الصواب والخطأ والمقبول اجتماعيا للم شمل الأُسَر والمجتمعات معًا. وهم يحتضنون قيم الصدق والتفاني والكرامة، ويقدرهم الناس لنصائحهم وتوجيهاتهم الواضحة، وهم يقودون بسعادة الطريق على المسارات الصعبة. ولاعتزاز شخصيات التنفيذيين بقدرتها على التقريب بين الناس، فهي شخصيات غالبًا ما تأخذ أدوار منظمي المجتمع، وتعمل جاهدةً لجلب الجميع معًا في الاحتفال بالأحداث المحلية العزيزة، أو دفاعًا عن القيم التقليدية التي تجمع الأسر والمجتمعات معًا.''',
          image: 'assets/estj2.png'),
      Tabpatterns(Tabchilds: [
        TabsListView(childs: [
          TabsCloumn(
              text1: 'عادات مكان العمل',
              text2:
                  '''الأشخاص الذين يتمتعون بشخصية ESTJ (القادة التنفيذيون) يظهرون ميولًا واضحة ومتسقة، وتكون هذه الميول بارزة بشكل خاص في بيئة العمل. سواء كانوا يعملون كمرؤوسين، بين زملائهم، أو كمديرين، فإنهم يحرصون على خلق النظام، اتباع القواعد، والعمل لضمان أن يتم إنجاز عملهم وعمل من حولهم وفقًا لأعلى المعايير.
تُعد أسهل طريقة لخسارة احترام هذا النوع من الشخصيات هي التهاون في أداء المهام أو التملص من المسؤوليات.'''),
          TabsCloumn(
              text1: 'الموظفون من نوع ESTJ',
              text2:
                  '''أصحاب شخصية ESTJ يتميزون بالجدية والالتزام باتباع القواعد. على الرغم من أنهم قد يظهرون عنادًا وجمودًا أحيانًا، خاصة عند مواجهتهم بأفكار غير مكتملة التطوير، إلا أنهم عادةً ما يكونون منفتحين على تعلم طرق جديدة طالما أنها أكثر كفاءة وفعالية من الطرق التقليدية. ومع ذلك، فهم ليسوا من النوع الذي يميل إلى التجريب الذاتي؛ إذ يُعتبر الالتزام بالمسؤوليات المحددة وإنجاز الواجبات هو شاغلهم الأساسي.
يُعرف ESTJ بولائهم وتفانيهم، لكن هذا يرتبط إلى حد ما بمستوى احترامهم للآخرين. هم على استعداد للتعبير عن آرائهم، خاصة عند اتخاذ القرارات المتعلقة بما هو مقبول وما هو غير ذلك. وإذا قُدمت لهم ردود منطقية تُعالج مخاوفهم، فإنهم غالبًا ما يكونون راضين. لكن إذا رأوا أن مديريهم يتبعون أساليب غير منطقية أو غير صادقة أو جبانة، فقد يكونون صريحين للغاية – وإن كانوا يظلون هادئين ومتزنين – في التعبير عن آرائهم حيال ذلك.'''),
          TabsCloumn(
              text1: 'المديرون من نوع ESTJ',
              text2:
                  '''شخصيات ESTJ تجد متعة حقيقية في تنظيم الآخرين وتحويلهم إلى فرق عمل فعّالة، وبصفتهم مدراء، فإن لديهم أفضل الفرص لتحقيق ذلك. وعلى الرغم من أنهم قد يكونون أحيانًا مفرطي السيطرة أو يميلون إلى الإدارة الدقيقة، إلا أن إرادتهم القوية وعقليتهم الموجهة نحو المجتمع تُمكنهم من الدفاع عن فرقهم ومبادئهم ضد التشتت أو التخفيضات، بغض النظر عن مصدرها.

يبث أصحاب هذه الشخصية نوعًا من السلطة الطبيعية، لكنهم أحيانًا يتوقعون أن تُحترم هذه السلطة بشكل غير مشروط، مما يجعلهم يقاومون التغيير ويصرون على أن تُنجز الأمور وفقًا للقواعد المحددة. سواء تم الاعتماد على قواعدهم الخاصة أو التقاليد والقواعد القائمة يعتمد على الظروف، إلا أنهم يميلون إلى الاعتماد على أمان التقاليد والسوابق. ومع ذلك، فإن توقعات شخصيات ESTJ تكون واضحة جدًا، مما يترك مساحة صغيرة أو معدومة للتحول عن الخطة الأصلية.'''),
        ]),
        TabsListView(childs: [
          TabsCloumn(
              text1: 'مسارات الحياة المهنية',
              text2:
                  '''بالنسبة للأشخاص من نوع شخصية ESTJ (المديرين التنفيذيين)، غالبًا ما تكون مساراتهم المهنية واضحة ومباشرة مثل شخصياتهم. على الرغم من وجود العديد من الاتجاهات التي يمكنهم اختيارها، إلا أنهم في الغالب يجدون أنفسهم في مواقف تتيح لهم استغلال ميلهم للتنظيم، والهيكلة، والالتزام بتنفيذ المهام.
مع وجود تركيز إضافي، يتميز ESTJs باحترام عميق للتقاليد، والاستقرار، والأمان – وهي صفات تجعلهم يتفوقون في التقدم على مسارات واضحة نحو زيادة المسؤولية والاعتماد عليهم.'''),
          TabsCloumn(
              text1: 'السمات الأساسية للنجاح',
              text2:
                  '''يميل الأشخاص من نوع شخصية ESTJ إلى الولاء، مما يؤدي غالبًا إلى بقائهم مع صاحب عمل واحد لأطول فترة ممكنة. كما أن احترامهم للمؤسسات الراسخة يدفعهم غالبًا للعمل مع منظمات مرموقة. مؤسسات إنفاذ القانون، الخدمة العسكرية، المستشفيات، وشركات القانون البارزة كلها أماكن قادرة على تقدير سنوات خدمتهم الطويلة.

يمثل أصحاب شخصية ESTJ صورة المواطن المثالي، ويحرصون على الحفاظ على هذا المثال طوال مسيرتهم المهنية. يساعدهم ذلك على التقدم إلى المناصب الإدارية أيضًا، حيث يمتلك هؤلاء الأشخاص صفات القيادة بالفطرة، وهو أمر يتم التعرف عليه بغض النظر عن الصناعة التي يختارونها. من استمتاعهم الحقيقي بتنظيم الآخرين إلى مهارتهم في التعبير الواضح عن مبادئهم وقيمهم وتوقعاتهم، يُعتبر ESTJs مديرين فعالين للغاية.

كقادة مرموقين، يتميز أصحاب شخصية ESTJ بكرههم الشديد للفوضى وعدم الكفاءة والكسل، وخاصة الكذب. وعندما تُنتهك هذه القيم، لا يترددون في إظهار استيائهم. ولكن طالما أن الجميع يلتزم بالقواعد، فإنهم يتمتعون بكفاءة هائلة.
بفضل حبهم للنظام والدقة، يتركون سجلًا من العمل الدقيق والمكتمل الذي يتم تسليمه في الوقت المحدد وضمن الميزانية. هذه السمات تجعلهم مؤهلين طبيعيًا ليكونوا مدققين ماليين، ومسؤولين ماليين، ومديرين إداريين في الأعمال التجارية.
'''),
          TabsCloumn(
              text1: 'قيمة العمل الجاد',
              text2:
                  '''العمل الجاد والتحفيز الذاتي هما من المبادئ الأساسية التي يتمتع بها أصحاب شخصية ESTJ، مما يجعلهم ممثلين متميزين في مجال المبيعات، سواء في وظائف التجزئة الأساسية، أو كجزء من فريق مكتبي، أو كعملاء مستقلين.

يتمسك هؤلاء الأشخاص بالمشاريع حتى اكتمالها، كبيرة كانت أم صغيرة، وهم منظمون بدرجة تجعل أي أعمال ورقية ضرورية تبدو مجرد إزعاج بسيط للعملاء بدلاً من أن تكون تجربة محيرة.
تتضافر هذه الصفات معًا لتجعل الخطوات الواضحة للتقدم التي يحتاجون إليها للحفاظ على شعورهم بالإنجاز ليست فقط ممكنة ولكنها شبه حتمية.'''),
        ]),
        TabsListView(childs: [
          TabsCloumn(
              text1: 'الأبوة',
              text2:
                  '''بالنسبة للأشخاص من نوع شخصية ESTJ (المديرين التنفيذيين)، فإن شعار "العمل الجاد، التقاليد، الاحترام" يتجلى بأفضل صورة في علاقاتهم مع أطفالهم. في كثير من النواحي، يمكن اعتبارهم صارمين للغاية. فهم حُماة التقاليد العائلية ولا يجدون صعوبة في فرض القواعد والمعايير التي وضعوها. وغالبًا ما يُنظر إليهم على أنهم مواطنون مثاليون، ويتوقعون من أطفالهم الحفاظ على تلك الصورة، متابعين المثال الذي قدموه من خلال التصرف بأدب واحترام – إذ لا يُسمح بالتمرد أو العصيان.

تمتلك شخصيات ESTJ رؤية للحياة قائمة على المسؤولية، وإيمانًا راسخًا بفكرة أن الإنسان يقوم بما يستطيع للمساهمة في الأسرة والمجتمع. ويتم بالطبع نقل هذه الرؤية إلى أطفالهم، وبمجرد أن يصبحوا قادرين، يُتوقع من الأطفال المساهمة بطريقتهم الخاصة، سواءً كان ذلك من خلال تنظيف أطباقهم وغرفهم أو الذهاب إلى النوم في الوقت المحدد – من أجل الحفاظ على النظام.

ليس الأمر أنهم يتوقعون الكمال المبالغ فيه من أطفالهم – فهم أشخاص عمليّون ولا يتطلعون إلا لرؤية أطفالهم ينمون ليصبحوا بالغين محترمين ومسؤولين. لكن هذه الشخصيات تريد أيضًا أن يكون أطفالها أقوياء الإرادة وقادرين، وهو أمر لا يمكن تحقيقه إلا إذا أتيحت لهم فرصة اتخاذ قراراتهم الخاصة ومواجهة عواقب تلك القرارات، سواءً كانت جيدة أو سيئة، مع حب ودعم والديهم.
'''),
          TabsCloumn(
              text1: 'أساس من الصدق',
              text2:
                  '''قد يواجه ESTJs تحديات بينما يتعلم أطفالهم تحقيق التوازن بين الرغبة المتزايدة في الاستقلالية وبين الالتزام بالواجبات المطلوبة منهم. لكن هؤلاء الأشخاص يتمتعون بميزة واضحة من الاتساق والصدق المباشر، مما يجعل توقعاتهم دائمًا واضحة وغير غامضة. قد يكون ذلك عبئًا كبيرًا، لكن أطفالهم دائمًا ما يعرفون ما يجب عليهم تقديمه، وغالبًا ما يدركون ويقدرون التفاني والعمل الجاد الذي بذله والديهم في المقابل.'''),
        ]),
        TabsListView(childs: [
          TabsCloumn(
              text1: 'العلاقات الرومانسية',
              text2:
                  '''أصحاب شخصية ESTJ (المديرون) يتميزون بكون علاقاتهم لا تتغير كثيرًا مع تقدمها من مرحلة المواعدة إلى العلاقات الطويلة الأمد وصولاً إلى الزواج. نظرًا لتقديرهم الكبير للأمانة والصراحة، يميلون إلى الوضوح بشأن هويتهم وطبيعتهم وأهدافهم منذ البداية.

وبفضل طبيعتهم الموثوقة، يلتزمون بهذه الأهداف والتوقعات على المدى الطويل. طالما أن شريكهم قادر على فهمهم كما هم والالتزام بنفس المستوى من الصراحة، فإن علاقاتهم غالبًا ما تكون مستقرة للغاية.'''),
          TabsCloumn(
              text1: 'حب ثابت',
              text2:
                  '''هذا لا يعني أنه لا يوجد أي تطور في العلاقة، بالطبع – فالنمو الشخصي دائمًا ما يكون أولوية كبيرة لدى أصحاب شخصية ESTJ، وكل هدف في الحياة يعتبر مهمًا. بل إن تقلب المزاج أو الأهداف أو الرغبات نادرًا ما يغير بشكل جذري أساس علاقاتهم.
قد يبدو هذا الأمر رتيبًا بعض الشيء، وبالفعل، فإن شخصيات ESTJ ليست عفوية أو غير متوقعة، لكنها تستمتع كثيرًا بقضاء الوقت مع شريكها والاستمتاع. الأحداث الاجتماعية والأنشطة هي فكرتهم عن قضاء وقت ممتع، وعلى الرغم من أنهم يميلون إلى الاعتماد على الأشخاص والأماكن المألوفة، إلا أنهم يجلبون الكثير من الطاقة والحماس، مما يساعد على إبقاء الأمور مثيرة.

يبرع ESTJs في التعبير عن اهتمامهم والتزامهم من خلال الخروجات البسيطة والمريحة والإيماءات اللطيفة، لكنهم يجدون صعوبة في التعبير عن الحميمية العاطفية في علاقاتهم. نادرًا ما تكون هناك لحظات مليئة بالعاطفة، وكذلك التصريحات اللفظية للحب. وعادةً ما يكون هذا الأمر مقبولاً، حيث يجد أصحاب شخصية ESTJ طرقًا أخرى، أكثر ملموسية، للتعبير عن حبهم. لكن المشكلة تكمن في الاعتراف بشرعية تلك الصفات لدى الآخرين بدلاً من رفضها باعتبارها غير مجدية أو غير منطقية، وهو أمر قد يكون مؤلمًا للغاية إذا كان شركاؤهم أكثر حساسية.'''),
          TabsCloumn(
              text1: 'حدود العقلانية',
              text2:
                  '''تتعامل شخصيات ESTJ مع الصراعات بشكل مباشر من خلال تقديم بيانات بسيطة قائمة على الحقائق – وهو نهج عقلاني للغاية – ولكن أحيانًا يتم التضحية بالرقة والتكتيك العاطفي خلال هذه العملية. وعلى الرغم من أن أساليب تواصلهم العقلانية تُقدَّر من قِبل الكثيرين، إلا أن البعض الآخر قد يجدها غير مريحة.
بالرغم من مهاراتهم الاجتماعية الكبيرة، فإن ESTJs قد يكونون سيئين بشكل خاص في قراءة الجانب العاطفي للآخرين. وعندما يتعلق الأمر بشريك حياتهم، يصبح من المهم أكثر من أي وقت مضى محاولة مجاراة مستوى الضعف العاطفي لدى الشريك من حين لآخر.'''),
        ]),
        TabsListView(childs: [
          TabsCloumn(
              text1: 'نقاط القوة',
              text2:
                  '''ملتزمونرؤية الأمور إلى نهايتها تعد بالنسبة لأصحاب شخصية ESTJ (المديرون التنفيذيون) واجبًا أخلاقيًا. لا تُهمل المهام لمجرد أنها أصبحت صعبة أو مملة. وغالبًا ما يرفضون اختصار الطرق أو التهرب من المسؤوليات، ويظهرون التزامهم من خلال إصرارهم الثابت على المعايير العالية. بل إنهم يسعون إلى تحقيق الكمال في معظم ما يتولونه في حياتهم.

ذو إرادة قويةالإرادة القوية هي ما يجعل هذا الالتزام ممكنًا، حيث لا يتراجع ESTJs عن معتقداتهم لمجرد مواجهة معارضة بسيطة. إنهم يدافعون عن أفكارهم ومبادئهم بلا هوادة، ولا يمكن إقناعهم بتغيير موقفهم إلا إذا ثبت خطأهم بوضوح ودقة.

مباشرون وصادقونيثق ESTJs بالحقائق أكثر بكثير من الأفكار المجردة أو الآراء. العبارات الواضحة والمعلومات الملموسة هي الأساس بالنسبة لهم، وهم يعيدون هذه الصراحة إلى الآخرين (سواء كانوا يرغبون بها أم لا).

أوفياء، صبورون، ويمكن الاعتماد عليهميسعى ESTJs لتجسيد الصدق والموثوقية، معتبرين الاستقرار والأمان من الأمور المهمة للغاية. عندما يقول ESTJs إنهم سيفعلون شيئًا، فإنهم يلتزمون بكلمتهم، مما يجعلهم أعضاء مسؤولين في أسرهم وشركاتهم ومجتمعاتهم.

يستمتعون بخلق النظامالفوضى تجعل الأمور غير متوقعة، والأمور غير المتوقعة لا يمكن الوثوق بها عند الحاجة. لذلك، يسعى ESTJs لخلق النظام والأمان في بيئاتهم من خلال وضع القواعد والهياكل والأدوار الواضحة. ويميلون إلى تجسيد هذا الاحتياج للنظام في حياتهم المنزلية أيضًا، حيث إنهم الأكثر احتمالًا لأن يكون لديهم جدول منظم للغاية يتضمن أوقاتًا ثابتة للاستيقاظ والنوم.

منظمون بارعونالالتزام بالحقيقة والمعايير الواضحة يجعل ESTJs قادة أكفاء وواثقين. ليس لديهم مشكلة في توزيع المهام والمسؤوليات على الآخرين بشكل عادل وموضوعي، مما يجعلهم إداريين ممتازين.'''),
          TabsCloumn(
              text1: 'نقاط الضعف',
              text2:
                  '''غير مرنين وعنيدونالمشكلة في كونهم متمسكين بما ينجح هو أنهم غالبًا ما يرفضون التفكير فيما قد يكون أفضل. كل شيء بالنسبة لهم هو مجرد رأي حتى يتم إثباته، ويجد ESTJs صعوبة في الثقة برأي لفترة كافية لمنحه فرصة لإثبات جدارته.

غير مرتاحين للتغييريُظهر ESTJs ولاءً قويًا للتقاليد. وعندما يُجبرون فجأة على تجربة حلول غير مجربة، يشعرون بعدم الراحة والتوتر. الأفكار الجديدة تشير ضمنيًا إلى أن طرقهم لم تكن جيدة بما يكفي، والتخلي عن ما كان يعمل دائمًا لصالح شيء قد يفشل يعرض صورتهم عن الاعتمادية للخطر.

حكميونأصحاب شخصية ESTJ لديهم قناعات قوية حول ما هو صواب وخطأ وما هو مقبول اجتماعيًا. ميلهم إلى خلق النظام يمتد غالبًا إلى جميع الأمور وكل الأشخاص، متجاهلين إمكانية وجود أكثر من طريقة صحيحة لإنجاز الأمور. ولا يترددون في إبلاغ الأشخاص الذين يختلفون معهم بما يفكرون فيه، معتبرين ذلك واجبًا عليهم لتصحيح الوضع.

مهووسون بالمكانة الاجتماعيةيفتخر ESTJs بالاحترام الذي يحظون به من أصدقائهم وزملائهم ومجتمعهم، وعلى الرغم من صعوبة الاعتراف بذلك، فإنهم يهتمون كثيرًا بالرأي العام. ويمكن أن ينشغلوا كثيرًا بمحاولة تلبية توقعات الآخرين، مما يؤدي إلى إهمال تلبية احتياجاتهم الشخصية.

صعوبة في الاسترخاءهذا السعي وراء الاحترام يعزز لديهم حاجة للحفاظ على كرامتهم، مما يجعل من الصعب عليهم الاسترخاء والاستمتاع، خشية أن يبدوا غير مسؤولين أو مثيرين للسخرية، حتى لو كان الأمر مجرد مزاح أو وقت ممتع.

صعوبة في التعبير عن العواطفينشغل ESTJs بالحقائق والأساليب الأكثر فاعلية إلى درجة أنهم ينسون التفكير فيما يجعل الآخرين سعداء. قد ينسون التعبير عن العواطف والتعاطف. على سبيل المثال، قد يكون طريق التفافي رائعًا من حيث المناظر الجميلة وسعادة العائلة، لكنهم قد يرونه مجرد تأخير ساعة عن الوجهة، مما يجرح مشاعر أحبائهم برفض الفكرة بشكل قاسٍ.'''),
        ]),
        TabsListView(childs: [
          TabsCloumn(
              text1: 'الصداقات',
              text2:
                  '''الأشخاص الذين ينتمون إلى شخصية ESTJ (المديرون التنفيذيون) يتمتعون بصداقات قوية وتقليدية، حيث يقدرون الولاء والقيم المشتركة. غالبًا ما تتميز صداقاتهم بالأنشطة الروتينية والمصالح المشتركة أكثر من التوافق الفكري أو الروحي. ومع ذلك، فإن هذا لا يقلل من قوة هذه العلاقات. الصداقات التي تعتمد على الاعتمادية والمصالح المتبادلة يمكن أن تكون روابط قوية تصمد أمام تقلبات الحياة بثبات لا يتزعزع.'''),
          TabsCloumn(
              text1: 'تحديد المسار',
              text2:
                  '''بين أصدقائهم المقربين، يظهر أصحاب شخصية ESTJ (المديرون التنفيذيون) بطبيعتهم الاجتماعية وحماسهم، حيث يكونون دائمًا على استعداد لجلب الآخرين معهم للمشاركة في أنشطة رياضية أو خارجية صحية. قد يصبحون أحيانًا مُفرطين في الحث على المشاركة، ولكن ذلك ينبع من رغبتهم في أن يقضي الجميع وقتًا ممتعًا. أصدقاؤهم لا يعانون من نقص في الدعوات إلى الأنشطة الاجتماعية والفعاليات، بدءًا من تذاكر لمباراة محلية، إلى رحلة تخييم في عطلة نهاية الأسبوع، وحتى حفلات الشواء يوم الأحد.

يسعى ESTJs إلى صداقات قوية مبنية على الثقة والولاء (مع أولوية الولاء للعائلة دائمًا). نشيطون وسريعي البديهة، ولا يمكن اتهامهم بعدم القيام بما يكفي لدفع الملل بعيدًا. وعلى الرغم من أنهم ليسوا دائمًا عفويين، إلا أنهم يعرفون كيف يلعبون دورهم لضمان أن أصدقائهم يستمتعون بوقتهم.
لكن الطريقة التي يبنون بها صداقاتهم ويحافظون عليها قد تقلل من تنوع دائرتهم الاجتماعية. يميلون إلى البحث عن أشخاص مشابهين لهم في الاحترام للتقاليد والمؤسسات. وبطبيعتهم العنيدة، قد يكون من الصعب عليهم إيجاد أرضية مشتركة مع أشخاص يختلفون معهم باستمرار في مبادئهم ومعتقداتهم لتكوين روابط صداقة حقيقية.'''),
          TabsCloumn(
              text1: 'توسيع الآفاق',
              text2:
                  '''في الواقع، وكأنهم يريدون إثبات هذه الفكرة، فإن شخصيات ISTJ أحيانًا تكون صداقات مع أشخاص أكثر عفوية وإبداعًا. هذه العلاقات غالبًا ما تُبنى ليس على التفاهم المتبادل، بل على احترام الاختلافات بين الطرفين.

يستمتع أصحاب شخصية ISTJ بالإعجاب باتساع أفكار الآخرين وتنوعها، حيث إنهم واثقون من ذكائهم الخاص. وفي الوقت نفسه، غالبًا ما يُقدَّرون على واقعيتهم واعتماديتهم – وهما سمتان يصعب العثور عليهما في كثير من الأحيان. وكما هو الحال دائمًا، يبقى المعرفة هي العامل الموحِّد بين هذه الشخصيات المختلفة.

تعريض أنفسهم لأفكار جديدة بين معارف يفكرون بشكل مختلف لن يُلحق ضررًا بأصحاب شخصية ESTJ (المديرون التنفيذيون). في كلتا الحالتين، إما أنهم يكتشفون طرقًا أفضل وأساسًا أقوى لمعتقداتهم، أو يزدادون ثقة بآرائهم بعد أن يدافعوا عنها بنجاح.
وكما يعتقدون أن الأشخاص الذين يقضون حياتهم منعزلين في أقبية منازلهم يلعبون ألعاب الفيديو بحاجة للخروج أكثر إلى العالم، فإن ESTJs بحاجة أيضًا إلى التأكد من خروجهم من فقاعتهم الخاصة التي تفتقر إلى التحدي الفكري. الانفتاح على وجهات نظر وآراء جديدة قد يفتح لهم آفاقًا أوسع ويعزز قدراتهم على فهم العالم من حولهم بشكل أفضل.'''),
        ]),
        TabsListView(childs: [
          TabsCloumn(
              text1: 'مقدمة تعريفية',
              text2:
                  '''الأشخاص الذين يتمتعون بنمط شخصية ESTJ (المنفذين) يمثلون قيم التقليد والنظام، ويستخدمون فهمهم لما هو صواب وخطأ وما هو مقبول اجتماعيًا لجمع العائلات والمجتمعات معًا. يتبنون قيم الصدق والتفاني، ويُقدَّرون بسبب عقلية الإرشاد لديهم وقدرتهم على وضع الخطط وتنفيذها بطريقة دقيقة وفعالة. يسعدهم قيادة الطريق في المسارات الصعبة، ولا يستسلمون عندما تصبح الأمور مرهقة.'''),
          TabsCloumn(
              text1: 'القيادة بالمثال',
              text2:
                  '''مؤمنون بشدة بسيادة القانون والسلطة التي يجب أن تُكتسب، يقود أصحاب الشخصية ESTJ (المنفذون) بالمثال، حيث يُظهرون تفانيهم وصدقهم الهادف ويرفضون تمامًا الكسل والغش. إذا كان هناك من يعلن أن العمل اليدوي الشاق هو وسيلة ممتازة لبناء الشخصية، فهو بلا شك صاحب شخصية ESTJ.

يعيش هذا النمط من الشخصيات في عالم من الحقائق الواضحة والقابلة للتحقق، ويدرك تمامًا ما يدور حوله. يقينهم بمعرفتهم يعني أنهم يلتزمون بمبادئهم حتى في مواجهة مقاومة شديدة، ويعملون على تعزيز رؤية واضحة لما هو مقبول وما هو غير مقبول. ولا تقتصر آراؤهم على الحديث فقط، حيث إنهم على استعداد للانخراط في أكثر المشاريع تحديًا، وتحسين خطط العمل وتفصيل الأمور على طول الطريق، مما يجعل حتى أصعب المهام تبدو سهلة وقابلة للتنفيذ.

ومع ذلك، فإن أصحاب شخصية ESTJ لا يعملون بمفردهم، ويتوقعون أن يقابل تفانيهم وأخلاقياتهم في العمل بالمثل. يلتزمون بوعودهم، وإذا عرّض شريكهم أو زملاؤهم هذه الالتزامات للخطر بسبب عدم الكفاءة أو الكسل أو، والأسوأ من ذلك، عدم الأمانة، فإنهم لا يترددون في التعبير عن خيبة أملهم. يمكن أن يكسبهم هذا سمعة بأنهم غير مرنين، لكن ذلك ليس لأنهم عنيدون بشكل عشوائي، بل لأنهم يؤمنون حقًا بأن هذه القيم هي ما تجعل المجتمع يعمل بشكل صحيح.'''),
          TabsCloumn(
              text1: 'مسؤولية أكبر',
              text2:
                  '''التحدي الرئيسي لأصحاب شخصية ESTJ هو الاعتراف بأن ليس الجميع يسيرون على نفس الطريق أو يساهمون بالطريقة نفسها. القائد الحقيقي هو من يدرك قوة الفرد كما يدرك قوة المجموعة، ويساعد في جلب أفكار الأفراد إلى الطاولة. بهذه الطريقة، يتمكن أصحاب شخصية ESTJ من جمع جميع الحقائق اللازمة، مما يسمح لهم بقيادة الاتجاهات التي تخدم الجميع بشكل أفضل.'''),
        ]),
      ])
    ]);
  }
}
