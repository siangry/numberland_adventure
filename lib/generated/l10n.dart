// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to Numberland, a magical world where numbers live and play!`
  String get welcomeToNumberland {
    return Intl.message(
      'Welcome to Numberland, a magical world where numbers live and play!',
      name: 'welcomeToNumberland',
      desc: '',
      args: [],
    );
  }

  /// `But oh no! The Number King needs your help!`
  String get butOhNo {
    return Intl.message(
      'But oh no! The Number King needs your help!',
      name: 'butOhNo',
      desc: '',
      args: [],
    );
  }

  /// `The mischievous Mix-Up Goblin has scrambled all the numbers, and now everything is out of order.`
  String get theMischievousGlobin {
    return Intl.message(
      'The mischievous Mix-Up Goblin has scrambled all the numbers, and now everything is out of order.',
      name: 'theMischievousGlobin',
      desc: '',
      args: [],
    );
  }

  /// `Can you help to restore the balance of Numberland?`
  String get canYouHelpToRestore {
    return Intl.message(
      'Can you help to restore the balance of Numberland?',
      name: 'canYouHelpToRestore',
      desc: '',
      args: [],
    );
  }

  /// `The Magic Bridge`
  String get theMagicBridge {
    return Intl.message(
      'The Magic Bridge',
      name: 'theMagicBridge',
      desc: '',
      args: [],
    );
  }

  /// `The Tower of Numbers`
  String get theTowerOfNumbers {
    return Intl.message(
      'The Tower of Numbers',
      name: 'theTowerOfNumbers',
      desc: '',
      args: [],
    );
  }

  /// `The Magical Potion`
  String get theMagicalPotion {
    return Intl.message(
      'The Magical Potion',
      name: 'theMagicalPotion',
      desc: '',
      args: [],
    );
  }

  /// `Easy`
  String get easy {
    return Intl.message('Easy', name: 'easy', desc: '', args: []);
  }

  /// `Medium`
  String get medium {
    return Intl.message('Medium', name: 'medium', desc: '', args: []);
  }

  /// `Hard`
  String get hard {
    return Intl.message('Hard', name: 'hard', desc: '', args: []);
  }

  /// `Congratulation! You save the Numberland!`
  String get congratulationYouSave {
    return Intl.message(
      'Congratulation! You save the Numberland!',
      name: 'congratulationYouSave',
      desc: '',
      args: [],
    );
  }

  /// `The Number King's castle is across a river, but the bridges are enchanted!`
  String get theNumberKingCastle {
    return Intl.message(
      'The Number King\'s castle is across a river, but the bridges are enchanted!',
      name: 'theNumberKingCastle',
      desc: '',
      args: [],
    );
  }

  /// `To cross, you must choose the right bridge by comparing two number signs`
  String get toCrossYouMustChoose {
    return Intl.message(
      'To cross, you must choose the right bridge by comparing two number signs',
      name: 'toCrossYouMustChoose',
      desc: '',
      args: [],
    );
  }

  /// `Pick the bigger number or smaller number, as the king requests, to make the bridge appear!`
  String get pickTheBiggerorSmaller {
    return Intl.message(
      'Pick the bigger number or smaller number, as the king requests, to make the bridge appear!',
      name: 'pickTheBiggerorSmaller',
      desc: '',
      args: [],
    );
  }

  /// `Which number is bigger? `
  String get whichNumberIsBigger {
    return Intl.message(
      'Which number is bigger? ',
      name: 'whichNumberIsBigger',
      desc: '',
      args: [],
    );
  }

  /// `Which number is smaller? `
  String get whichNumberIsSmaller {
    return Intl.message(
      'Which number is smaller? ',
      name: 'whichNumberIsSmaller',
      desc: '',
      args: [],
    );
  }

  /// `Bingo! You are correct!`
  String get bingoYouAreCorrect {
    return Intl.message(
      'Bingo! You are correct!',
      name: 'bingoYouAreCorrect',
      desc: '',
      args: [],
    );
  }

  /// `Oops! You are wrong!`
  String get oopsYouAreWrong {
    return Intl.message(
      'Oops! You are wrong!',
      name: 'oopsYouAreWrong',
      desc: '',
      args: [],
    );
  }

  /// `Congratulation! You have lifted the spell.`
  String get congratulationYouHaveLifted {
    return Intl.message(
      'Congratulation! You have lifted the spell.',
      name: 'congratulationYouHaveLifted',
      desc: '',
      args: [],
    );
  }

  /// `Oops! you fail to lift the spell.`
  String get oopsYouHaventLifted {
    return Intl.message(
      'Oops! you fail to lift the spell.',
      name: 'oopsYouHaventLifted',
      desc: '',
      args: [],
    );
  }

  /// `The Mix-Up Goblin has jumbled the Number Towers in Numberland!`
  String get theMixUpGlobin {
    return Intl.message(
      'The Mix-Up Goblin has jumbled the Number Towers in Numberland!',
      name: 'theMixUpGlobin',
      desc: '',
      args: [],
    );
  }

  /// `The only way to fix them is by arranging the number blocks in ascending or descending order.`
  String get theOnlyWayToFix {
    return Intl.message(
      'The only way to fix them is by arranging the number blocks in ascending or descending order.',
      name: 'theOnlyWayToFix',
      desc: '',
      args: [],
    );
  }

  /// `Arrange the number blocks to build the correct tower and restore Numberland's skyline!`
  String get arrangetheNumberBlocks {
    return Intl.message(
      'Arrange the number blocks to build the correct tower and restore Numberland\'s skyline!',
      name: 'arrangetheNumberBlocks',
      desc: '',
      args: [],
    );
  }

  /// `Arrange numbers in ascending order (small to big)`
  String get arrangeNumbersInAscending {
    return Intl.message(
      'Arrange numbers in ascending order (small to big)',
      name: 'arrangeNumbersInAscending',
      desc: '',
      args: [],
    );
  }

  /// `Arrange numbers in descending order (big to small)`
  String get arrangeNumbersInDescending {
    return Intl.message(
      'Arrange numbers in descending order (big to small)',
      name: 'arrangeNumbersInDescending',
      desc: '',
      args: [],
    );
  }

  /// `Congratulation! You have successfully built the correct tower.`
  String get congratulationYouHavehelp {
    return Intl.message(
      'Congratulation! You have successfully built the correct tower.',
      name: 'congratulationYouHavehelp',
      desc: '',
      args: [],
    );
  }

  /// `Oops! The tower is not built correctly.`
  String get oopsTheTowerIsNotBuilt {
    return Intl.message(
      'Oops! The tower is not built correctly.',
      name: 'oopsTheTowerIsNotBuilt',
      desc: '',
      args: [],
    );
  }

  /// `The Number Wizard needs your help to make magic potions!`
  String get theNumberWizardNeeds {
    return Intl.message(
      'The Number Wizard needs your help to make magic potions!',
      name: 'theNumberWizardNeeds',
      desc: '',
      args: [],
    );
  }

  /// `To complete the spell, you must combine two numbers to match the correct potion recipe.`
  String get toCompleteTheSpell {
    return Intl.message(
      'To complete the spell, you must combine two numbers to match the correct potion recipe.',
      name: 'toCompleteTheSpell',
      desc: '',
      args: [],
    );
  }

  /// `Mix the right numbers in the wizard's cauldron to create a glowing potion!`
  String get mixTheRightNumbers {
    return Intl.message(
      'Mix the right numbers in the wizard\'s cauldron to create a glowing potion!',
      name: 'mixTheRightNumbers',
      desc: '',
      args: [],
    );
  }

  /// `We need to make {composeValue}! What is the number product of mixing two number ingredients?`
  String weNeedToMake(Object composeValue) {
    return Intl.message(
      'We need to make $composeValue! What is the number product of mixing two number ingredients?',
      name: 'weNeedToMake',
      desc: '',
      args: [composeValue],
    );
  }

  /// `Congratulation! You have created a glowing potion.`
  String get congratulationYouHaveCreated {
    return Intl.message(
      'Congratulation! You have created a glowing potion.',
      name: 'congratulationYouHaveCreated',
      desc: '',
      args: [],
    );
  }

  /// `Oops! You have created a deadly potion instead.`
  String get oopsYouHaveCreated {
    return Intl.message(
      'Oops! You have created a deadly potion instead.',
      name: 'oopsYouHaveCreated',
      desc: '',
      args: [],
    );
  }

  /// `The correct answer is {answer}`
  String theCorrectNumberIs(Object answer) {
    return Intl.message(
      'The correct answer is $answer',
      name: 'theCorrectNumberIs',
      desc: '',
      args: [answer],
    );
  }

  /// `en`
  String get en {
    return Intl.message('en', name: 'en', desc: '', args: []);
  }

  /// `zh`
  String get zh {
    return Intl.message('zh', name: 'zh', desc: '', args: []);
  }

  /// `ms`
  String get ms {
    return Intl.message('ms', name: 'ms', desc: '', args: []);
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `English`
  String get english {
    return Intl.message('English', name: 'english', desc: '', args: []);
  }

  /// `Chinese`
  String get chinese {
    return Intl.message('Chinese', name: 'chinese', desc: '', args: []);
  }

  /// `Malay`
  String get malay {
    return Intl.message('Malay', name: 'malay', desc: '', args: []);
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `Music`
  String get music {
    return Intl.message('Music', name: 'music', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ms'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
