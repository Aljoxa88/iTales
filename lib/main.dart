import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iTales',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Choose your tale'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Scrollbar(
        trackVisibility: true,
        child: OrientationBuilder(
          builder: (context, orientation) {
            return GridView.count(
              // Create a grid with 2 columns in portrait mode, or 3 columns in
              // landscape mode.
              crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
              children: _buildTales(),
            );
          },
        ),
      ),
    );
  }

  List<Widget> _buildTales() {
    List<Widget> widgets = [];

    List<String> jsons = [
      'assets/lottiefiles/100_percent.json',
      'assets/lottiefiles/credit_level.json',
      'assets/lottiefiles/immiguide_.json',
      'assets/lottiefiles/pagado.json',
      'assets/lottiefiles/splashy_loader.json',
      'assets/lottiefiles/cube_loader.json',
      'assets/lottiefiles/in-app_purchasing.json',
      'assets/lottiefiles/pagination.json',
      'assets/lottiefiles/square_drop_loader.json',
      'assets/lottiefiles/cubo_livre.json',
      'assets/lottiefiles/india.json',
      'assets/lottiefiles/panel2d.json',
      'assets/lottiefiles/star 2.json',
      'assets/lottiefiles/Plane.json',
      'assets/lottiefiles/curly_hair_character_loop.json',
      'assets/lottiefiles/infinite_rainbow.json',
      'assets/lottiefiles/passport.json',
      'assets/lottiefiles/streetby_test_loading.json',
      'assets/lottiefiles/StreetByMorning.json',
      'assets/lottiefiles/cycle_animation.json',
      'assets/lottiefiles/intelia_logo_animation.json',
      'assets/lottiefiles/patient_successfully_added.json',
      'assets/lottiefiles/submit button.json',
      'assets/lottiefiles/a_mountain.json',
      'assets/lottiefiles/day_night_cycle.json',
      'assets/lottiefiles/iphone_x_loading.json',
      'assets/lottiefiles/payme.json',
      'assets/lottiefiles/summer.json',
      'assets/lottiefiles/accept_arrows.json',
      'assets/lottiefiles/day_of_the_dead.json',
      'assets/lottiefiles/jojo_the_bird.json',
      'assets/lottiefiles/peli-canon.json',
      'assets/lottiefiles/deadpool.json',
      'assets/lottiefiles/jolly_walker.json',
      'assets/lottiefiles/pen_tool_loop.json',
      'assets/lottiefiles/swiftkey-logo.json',
      'assets/lottiefiles/android_fingerprint.json',
      'assets/lottiefiles/delivery_van.json',
      'assets/lottiefiles/judgement.json',
      'assets/lottiefiles/pencil_write.json',
      'assets/lottiefiles/swipe_menu.json',
      'assets/lottiefiles/penguin.json',
      'assets/lottiefiles/swipe_right_indicator.json',
      'assets/lottiefiles/anima.json',
      'assets/lottiefiles/dna_loader.json',
      'assets/lottiefiles/la_calavera.json',
      'assets/lottiefiles/permission.json',
      'assets/lottiefiles/switch_loop.json',
      'assets/lottiefiles/animated_graph.json',
      'assets/lottiefiles/dog.json',
      'assets/lottiefiles/landing_page.json',
      'assets/lottiefiles/personal_character.json',
      'assets/lottiefiles/the_final_frontier.json',
      'assets/lottiefiles/animated_laptop_.json',
      'assets/lottiefiles/done.json',
      'assets/lottiefiles/lego_loader.json',
      'assets/lottiefiles/ph_onboarding_.json',
      'assets/lottiefiles/tigerobo_demo.json',
      'assets/lottiefiles/animated_logo.json',
      'assets/lottiefiles/download copy.json',
      'assets/lottiefiles/lf20_fteywrno.json',
      'assets/lottiefiles/phonological.json',
      'assets/lottiefiles/timer_(3_second_loop).json',
      'assets/lottiefiles/atm_link.json',
      'assets/lottiefiles/download.json',
      'assets/lottiefiles/light.json',
      'assets/lottiefiles/pink_drink_machine.json',
      'assets/lottiefiles/toggle.json',
      'assets/lottiefiles/autoconnect_loading.json',
      'assets/lottiefiles/downloader.json',
      'assets/lottiefiles/lightsaber.json',
      'assets/lottiefiles/plane_to_dollar.json',
      'assets/lottiefiles/toggle_switch.json',
      'assets/lottiefiles/little_girl_jumping_-_loader.json',
      'assets/lottiefiles/play,_pause.json',
      'assets/lottiefiles/touch_id.json',
      'assets/lottiefiles/banner_animation.json',
      'assets/lottiefiles/drop_to_refresh.json',
      'assets/lottiefiles/loading.json',
      'assets/lottiefiles/play_and_like_it.json',
      'assets/lottiefiles/tractor.json',
      'assets/lottiefiles/bb8.json',
      'assets/lottiefiles/edited-landscape.json',
      'assets/lottiefiles/loading_copy.json',
      'assets/lottiefiles/play_button.json',
      'assets/lottiefiles/tractor_animation.json',
      'assets/lottiefiles/bell.json',
      'assets/lottiefiles/elephant_trunk_swing.json',
      'assets/lottiefiles/loading_disc.json',
      'assets/lottiefiles/playing.json',
      'assets/lottiefiles/trail_loading.json',
      'assets/lottiefiles/birds.json',
      'assets/lottiefiles/emoji_shock.json',
      'assets/lottiefiles/loading_semicircle.json',
      'assets/lottiefiles/point.json',
      'assets/lottiefiles/trophy.json',
      'assets/lottiefiles/bitcoin_to_the_moon.json',
      'assets/lottiefiles/emoji_tongue.json',
      'assets/lottiefiles/location.json',
      'assets/lottiefiles/poo_loader.json',
      'assets/lottiefiles/emoji_wink.json',
      'assets/lottiefiles/location_marker.json',
      'assets/lottiefiles/powerupp_app_onboard (1).json',
      'assets/lottiefiles/truecosmos.json',
      'assets/lottiefiles/bomb.json',
      'assets/lottiefiles/empty_status.json',
      'assets/lottiefiles/location_pin.json',
      'assets/lottiefiles/powerupp_app_onboard.json',
      'assets/lottiefiles/turbine.json',
      'assets/lottiefiles/books.json',
      'assets/lottiefiles/estimate.json',
      'assets/lottiefiles/lottie_logo_1.json',
      'assets/lottiefiles/preloader.json',
      'assets/lottiefiles/typing dot.json',
      'assets/lottiefiles/bootymovin.json',
      'assets/lottiefiles/fab_animate.json',
      'assets/lottiefiles/lottiepreview_qr.json',
      'assets/lottiefiles/print.json',
      'assets/lottiefiles/uk.json',
      'assets/lottiefiles/bounching_ball.json',
      'assets/lottiefiles/fabulous_onboarding_animation.json',
      'assets/lottiefiles/mailsent.json',
      'assets/lottiefiles/progress_bar 2.json',
      'assets/lottiefiles/updating_map.json',
      'assets/lottiefiles/brain__.json',
      'assets/lottiefiles/favourite_app_icon.json',
      'assets/lottiefiles/man_and_pay_with_credit_card.json',
      'assets/lottiefiles/progress_bar.json',
      'assets/lottiefiles/us.json',
      'assets/lottiefiles/browser.json',
      'assets/lottiefiles/file_error.json',
      'assets/lottiefiles/map_animation.json',
      'assets/lottiefiles/rating.json',
      'assets/lottiefiles/video_cam.json',
      'assets/lottiefiles/building_evolution_animation.json',
      'assets/lottiefiles/finance_animation.json',
      'assets/lottiefiles/material loading.json',
      'assets/lottiefiles/red_pocket_pop_up.json',
      'assets/lottiefiles/vigilance_camera.json',
      'assets/lottiefiles/camera.json',
      'assets/lottiefiles/fingerprint_scanner.json',
      'assets/lottiefiles/material_loader.json',
      'assets/lottiefiles/rejection.json',
      'assets/lottiefiles/volume_indicator.json',
      'assets/lottiefiles/material_loading_2.json',
      'assets/lottiefiles/retweet.json',
      'assets/lottiefiles/volume_shake_indicator.json',
      'assets/lottiefiles/cancel_button.json',
      'assets/lottiefiles/fish.json',
      'assets/lottiefiles/material_wave_loading.json',
      'assets/lottiefiles/rocket.json',
      'assets/lottiefiles/vr_animation.json',
      'assets/lottiefiles/cash.json',
      'assets/lottiefiles/flag_of_mexico.json',
      'assets/lottiefiles/me_at_office.json',
      'assets/lottiefiles/rocksauce_title_card.json',
      'assets/lottiefiles/vr_sickness.json',
      'assets/lottiefiles/change_to_search_bar.json',
      'assets/lottiefiles/flow.json',
      'assets/lottiefiles/medal.json',
      'assets/lottiefiles/scan.json',
      'assets/lottiefiles/walking.json',
      'assets/lottiefiles/check_pop.json',
      'assets/lottiefiles/frog.json',
      'assets/lottiefiles/menuButton2.json',
      'assets/lottiefiles/scan_qr_code_success.json',
      'assets/lottiefiles/walking_arrow.json',
      'assets/lottiefiles/chinese.json',
      'assets/lottiefiles/funky_chicken.json',
      'assets/lottiefiles/menu_button_alt.json',
      'assets/lottiefiles/search_button.json',
      'assets/lottiefiles/wallet recharge.json',
      'assets/lottiefiles/clock.json',
      'assets/lottiefiles/gaming_pad.json',
      'assets/lottiefiles/mindful.json',
      'assets/lottiefiles/cloud_disconnection.json',
      'assets/lottiefiles/gears.json',
      'assets/lottiefiles/mnemonics.json',
      'assets/lottiefiles/code_invite_success.json',
      'assets/lottiefiles/servishero_loading.json',
      'assets/lottiefiles/wolf_peek.json',
      'assets/lottiefiles/coding_ape.json',
      'assets/lottiefiles/glow_loading.json',
      'assets/lottiefiles/motorcycle.json',
      'assets/lottiefiles/simple_loader.json',
      'assets/lottiefiles/x_pop.json',
      'assets/lottiefiles/coinfall.json',
      'assets/lottiefiles/gradient_animated_background.json',
      'assets/lottiefiles/moving bus.json',
      'assets/lottiefiles/colorline.json',
      'assets/lottiefiles/happy birthday.json',
      'assets/lottiefiles/moving_eye.json',
      'assets/lottiefiles/slack_app_loader.json',
      'assets/lottiefiles/xuanwheel_logo.json',
      'assets/lottiefiles/confusion.json',
      'assets/lottiefiles/hardware.json',
      'assets/lottiefiles/no_internet_connection.json',
      'assets/lottiefiles/snowcation.json',
      'assets/lottiefiles/yoga_carpet.json',
      'assets/lottiefiles/construction_site.json',
      'assets/lottiefiles/hint_01.json',
      'assets/lottiefiles/notification_request.json',
      'assets/lottiefiles/socar_logo.json',
      'assets/lottiefiles/youtube_icon_reveal.json',
      'assets/lottiefiles/cooking_app.json',
      'assets/lottiefiles/im_thirsty.json',
      'assets/lottiefiles/octopus.json',
      'assets/lottiefiles/soda_loader.json',
      'assets/lottiefiles/countdown.json',
      'assets/lottiefiles/spacehub.json',
      'assets/lottiefiles/credit_card.json',
      'assets/lottiefiles/spinner loading.json'
    ];

    return jsons
        .map((e) => Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: 200,
                height: 200,
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.2),
                  border: Border.all(color: Colors.blue),
                ),
                child: Lottie.asset(e),
              ),
            ))
        .toList();

    return widgets;
  }
}
