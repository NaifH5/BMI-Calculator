class Tips {
  final double bmi;
  String? status;
  String? tip1;
  String? tip2;
  String? tip3;
  String? tip4;
  String? range;

  Tips({required this.bmi}) {
    if (bmi < 16) {
      status = 'Very Severely Underweight';
      range = 'Less than 16';
      tip1 = 'Prioritize nutrient-rich foods like nuts, seeds, and lean meats';
      tip2 =
          'Eat smaller, frequent meals to maintain a steady intake of calories.';
      tip3 =
          'Include strength training to build muscle mass and increase weight.';
      tip4 =
          'Consult a healthcare professional for personalized guidance and monitoring.';
    } else if (bmi >= 16 && bmi < 17) {
      status = 'Severely Underweight';
      range = '16.0 to 16.9';
      tip1 = 'Increase calorie intake with nutrient-dense foods.';
      tip2 = 'Focus on small, frequent meals for consistent energy.';
      tip3 = 'Incorporate strength training to build muscle mass.';
      tip4 = 'Seek professional guidance for personalized support.';
    } else if (bmi >= 17 && bmi < 18.5) {
      status = 'Underweight';
      range = '17.0 to 18.4';
      tip1 = 'Include healthy fats like avocados and nuts.';
      tip2 = 'Eat regular, balanced meals to maintain weight.';
      tip3 = 'Incorporate strength exercises to build muscle.';
      tip4 = 'Seek professional advice for personalized support.';
    } else if (bmi >= 18.5 && bmi < 25) {
      status = 'Normal';
      range = '18.5 to 24.9';
      tip1 = 'Stay active with regular exercise routines.';
      tip2 = 'Balance meals with a mix of nutrients.';
      tip3 = 'Monitor weight and adjust diet and exercise as needed.';
      tip4 = 'Prioritize whole foods over processed options.';
    } else if (bmi >= 25 && bmi < 30) {
      status = 'Overweight';
      range = '25.0 to 29.9';
      tip1 = 'Focus on balanced meals with more vegetables and lean proteins.';
      tip2 = 'Limit sugary and processed foods to manage calorie intake.';
      tip3 =
          'Engage in regular physical activity like brisk walking or cycling.';
      tip4 = 'Monitor portion sizes and practice mindful eating habits.';
    } else if (bmi >= 30 && bmi < 35) {
      status = 'Obese Class I';
      range = '30.0 to 34.9';
      tip1 =
          'Focus on portion control and reduce intake of high-calorie foods.';
      tip2 = 'Increase physical activity with regular exercise sessions.';
      tip3 = 'Choose whole, unprocessed foods and limit sugary snacks.';
      tip4 =
          'Seek support from a healthcare provider or nutritionist for personalized advice.';
    } else if (bmi >= 35 && bmi < 40) {
      status = 'Obese Class II';
      range = '35.0 to 39.9';
      tip1 = 'Prioritize whole, unprocessed foods for balanced nutrition.';
      tip2 = 'Aim for regular, moderate exercise to support weight management.';
      tip3 =
          'Seek professional guidance for personalized weight-loss strategies.';
      tip4 = 'Monitor progress and adjust lifestyle habits accordingly.';
    } else {
      status = 'Obese Class III';
      range = 'Greater than 39.9';
      tip1 = 'Focus on portion control to manage calorie intake.';
      tip2 = 'Increase physical activity gradually for better health.';
      tip3 = 'Choose nutrient-dense foods to support weight loss.';
      tip4 = 'Seek medical guidance for safe and sustainable strategies.';
    }
  }
}
