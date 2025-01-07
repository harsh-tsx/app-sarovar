import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:app_1point2_store/core/app_export.dart';
import 'package:app_1point2_store/core/utils/validation_functions.dart';
import 'package:app_1point2_store/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    Key? key,
    required this.country,
    required this.onTap,
    required this.controller,
  }) : super(
          key: key,
        );

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10,
        ),
        border: Border.all(
          color: appTheme.gray50001,
          width: 1,
          strokeAlign: strokeAlignOutside,
        ),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              _openCountryPicker(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                left: 9,
                top: 8,
                bottom: 8,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5,
                      bottom: 4,
                    ),
                    child: Text(
                      "+${country.phoneCode}",
                      style: CustomTextStyles.titleMediumPoppinsMedium,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorPrimary,
                    height: 7,
                    width: 10,
                    margin: EdgeInsets.fromLTRB(9, 13, 11, 14),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 18,
                right: 5,
              ),
              child: CustomTextFormField(
                width: 296,
                controller: controller,
                hintText: "lbl_9982127860".tr,
                hintStyle: CustomTextStyles.titleMediumPoppinsMedium,
                textInputType: TextInputType.phone,
                validator: (value) {
                  if (!isValidPhone(value)) {
                    return "err_msg_please_enter_valid_phone_number".tr;
                  }
                  return null;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: 10,
            ),
            width: 60,
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: 14),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: 14),
          ),
          isSearchable: true,
          title: Text('Select your phone code', style: TextStyle(fontSize: 14)),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
