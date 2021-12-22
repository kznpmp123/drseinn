import 'package:flutter/material.dart';

class AboutRoute extends StatefulWidget {
  static final String routeName = "/about_route";
  @override
  _AboutRouteState createState() => _AboutRouteState();
}

class _AboutRouteState extends State<AboutRoute> {
  final Color tileColor = Colors.redAccent;
  final Color iconColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text("About", style: TextStyle(fontWeight: FontWeight.w700,
            fontSize: 14.0,
            color: Colors.black
        )),),
      // appBar: AppBar(title: Text("About")),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 8, right: 8),
        child: SingleChildScrollView(child: Text(
            '''
          Dr Seinn ၏ အမည်အရင်းမှာ Dr.Seinn Lei Aung ဖြစ်ပါသည်။

2008 တွင် သွားဘက်ဆိုင်ရာ ​ဆေးတက္ကသိုလ်မှ BDS (Ygn) ၊ 2011 တွင် ရန်ကုန်စီးပွား​ရေးတက္ကသိုလ်မှ စီးပွား​ရေး စီမံခန့်ခွဲမှုဆိုင်ရာ မဟာဘွဲ့ (MBA)တို့ ရရှိခဲ့ပြီး၊ 2010 မှ 2020 September အထိ Marketing Industry မှာ မြန်မာနိုင်ငံ၏ Top Pharmaceutical Company များတွင် Senior Management Level မှာ တာဝန်ထမ်း​ဆောင်ခဲ့ပါသည်။

ဆယ်စုနှစ်​ကျော် Public Speaking များ​ပြောခဲ့ပြီး 

Personal Development and Transformation, 

Leadership, 

Marketing, 

Branding, Advertising, 

Consumer Behavior, 

Business Communication အစရှိ​သော Team Training များစွာကိုလည်း​ပေးခဲ့ပါသည်။ 

Child Psychology and Parenting နှင့်ပတ်သက်၍လည်း Talk and Live Session များစွာ ပြုလုပ်ခဲ့ပြီး ဖြစ်ပါသည်။ 

2015-2016 တွင် National Management Degree College (NMDC) တွင် Diploma သင်တန်းများနှင့် STI University မှ Business Major Bachelor and Diploma တန်းများတွင် Marketing Subject အတွက် Part-Time Lecturer အ​နေနဲ့ တာဝန်ယူပြီး ​ကျောင်းသား၊​ကျောင်းသူ​ပေါင်းများစွာကို သင်ကြား​ပေးခဲ့ပါသည်။ 

2017-2018 ခုနှစ်များတွင် Applied Psychology, Spirituality, Universal Laws, Life Coaching များကို International Website/ International Mentor များထံမှ Self Study ပြုလုပ်သင်ကြားခဲ့ပါသည်။

2019 မှစတင်၍ Local Trainer and Mentor များထံမှ Applied Psychology, NLP, Social Science, Life Coaching များကို သင်ကြားခဲ့ပါသည်။ ထို့​နောက် mentor ဆရာ၊ ဆရာမများရဲ့ ခွင့်ပြုချက်ဖြင့် Online Classes များ၊ Corporate Training များ၊ Group Coaching and Personal Coaching များကို လုပ်​ဆောင်လျက်ရှိပါသည်။


Dr Seinn Lei Aung ( Dr Seinn ) graduated with Bachelor of Dentistry in 2008 from University of Dental Medicine, Yangon.

In 2011, she finished Master of Business Administration(MBA) from University of Economics, Yangon. She worked in Marketing industry of Top Pharmaceutical Companies with Senior Management levels since 2011. Over 10 years of experience in Public Speaking, Personal Development & Transformation, Leadership, Marketing, Consumer Behaviour, Branding, Advertising and Business Communication as Team Trainings.

Hosted multiple Talk & Live sessions on Child Psychology and Parenting. From 2015 to 2016, she was a part time lecturer for diploma classes at National Management Degree College ( NMDC ) and Major & diploma classes of Business Bachelor at STI University.

Since 2017, she studied Applied Psychology, Spirituality, Universal Laws and life coaching from international websites and learned Social Science, Applied Psychology, NLP and life coaching from local trainers & mentors since 2019. With the encouragement of the trainers & mentors, she is successfully created online classes, corporate training,group & personal coaching sessions.

Dr Seinn Team
          '''
        )),
      ),

    );
  }
}


