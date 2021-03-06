// Filename: spotlight.I
// Created by:  mike (04eb99)
//
////////////////////////////////////////////////////////////////////
//
// PANDA 3D SOFTWARE
// Copyright (c) Carnegie Mellon University.  All rights reserved.
//
// All use of this software is subject to the terms of the revised BSD
// license.  You should have received a copy of this license along
// with this source code in a file named "LICENSE."
//
////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////
//     Function: Spotlight::CData::Constructor
//       Access: Public
//  Description:
////////////////////////////////////////////////////////////////////
INLINE Spotlight::CData::
CData() :
  _exponent(50.0f),
  _specular_color(1.0f, 1.0f, 1.0f, 1.0f),
  _attenuation(1.0f, 0.0f, 0.0f)
{
}

////////////////////////////////////////////////////////////////////
//     Function: Spotlight::CData::Copy Constructor
//       Access: Public
//  Description:
////////////////////////////////////////////////////////////////////
INLINE Spotlight::CData::
CData(const Spotlight::CData &copy) :
  _exponent(copy._exponent),
  _specular_color(copy._specular_color),
  _attenuation(copy._attenuation)
{
}

////////////////////////////////////////////////////////////////////
//     Function: Spotlight::get_exponent
//       Access: Public
//  Description: Returns the exponent that controls the amount of
//               light falloff from the center of the spotlight.  See
//               set_exponent().
////////////////////////////////////////////////////////////////////
INLINE PN_stdfloat Spotlight::
get_exponent() const {
  CDReader cdata(_cycler);
  return cdata->_exponent;
}

////////////////////////////////////////////////////////////////////
//     Function: Spotlight::set_exponent
//       Access: Public
//  Description: Sets the exponent that controls the amount of light
//               falloff from the center of the spotlight.  The light
//               is attenuated by the cosine of the angle between the
//               direction of the light and the direction of the point
//               being lighted, raised to the power of this exponent.
//               Thus, higher exponents result in a more focused light
//               source, regardless of the field-of-view of the lens.
////////////////////////////////////////////////////////////////////
INLINE void Spotlight::
set_exponent(PN_stdfloat exponent) {
  CDWriter cdata(_cycler);
  cdata->_exponent = exponent;
}

////////////////////////////////////////////////////////////////////
//     Function: Spotlight::get_specular_color
//       Access: Public
//  Description: Returns the color of specular highlights generated by
//               the light.
////////////////////////////////////////////////////////////////////
INLINE const LColor &Spotlight::
get_specular_color() const {
  CDReader cdata(_cycler);
  return cdata->_specular_color;
}

////////////////////////////////////////////////////////////////////
//     Function: Spotlight::set_specular_color
//       Access: Public
//  Description: Sets the color of specular highlights generated by
//               the light.
////////////////////////////////////////////////////////////////////
INLINE void Spotlight::
set_specular_color(const LColor &color) {
  CDWriter cdata(_cycler);
  cdata->_specular_color = color;
}

////////////////////////////////////////////////////////////////////
//     Function: Spotlight::get_attenuation
//       Access: Public
//  Description: Returns the terms of the attenuation equation for the
//               light.  These are, in order, the constant, linear,
//               and quadratic terms based on the distance from the
//               point to the vertex.
////////////////////////////////////////////////////////////////////
INLINE const LVecBase3 &Spotlight::
get_attenuation() const {
  CDReader cdata(_cycler);
  return cdata->_attenuation;
}

////////////////////////////////////////////////////////////////////
//     Function: Spotlight::set_attenuation
//       Access: Public
//  Description: Sets the terms of the attenuation equation for the
//               light.  These are, in order, the constant, linear,
//               and quadratic terms based on the distance from the
//               point to the vertex.
////////////////////////////////////////////////////////////////////
INLINE void Spotlight::
set_attenuation(const LVecBase3 &attenuation) {
  CDWriter cdata(_cycler);
  cdata->_attenuation = attenuation;
}
