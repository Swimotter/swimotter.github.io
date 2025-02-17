/* 
 * Copyright (c) 2025 SingChun LEE @ Bucknell University. CC BY-NC 4.0.
 * 
 * This code is provided mainly for educational purposes at Bucknell University.
 *
 * This code is licensed under the Creative Commons Attribution-NonCommerical 4.0
 * International License. To view a copy of the license, visit 
 *   https://creativecommons.org/licenses/by-nc/4.0/
 * or send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.
 *
 * You are free to:
 *  - Share: copy and redistribute the material in any medium or format.
 *  - Adapt: remix, transform, and build upon the material.
 *
 * Under the following terms:
 *  - Attribution: You must give appropriate credit, provide a link to the license,
 *                 and indicate if changes where made.
 *  - NonCommerical: You may not use the material for commerical purposes.
 *  - No additional restrictions: You may not apply legal terms or technological 
 *                                measures that legally restrict others from doing
 *                                anything the license permits.
 */

struct tint_symbol {
  /* @offset(0) */
  tint_symbol_1 : vec2f,
  /* @offset(8) */
  tint_symbol_2 : vec2f,
  /* @offset(16) */
  tint_symbol_3 : vec2f,
  /* @offset(24) */
  tint_symbol_4 : vec2f,
  /* @offset(32) */
  tint_symbol_5 : vec2f,
  /* @offset(40) */
  tint_symbol_6 : f32,
}

alias RTArr = array<tint_symbol>;

struct tint_symbol_7_block {
  /* @offset(0) */
  inner : RTArr,
}

struct tint_symbol_9_block {
  /* @offset(0) */
  inner : u32,
}

struct tint_symbol_10_block {
  /* @offset(0) */
  inner : f32,
}

var<private> tint_symbol_12_1 : u32;

var<private> tint_symbol_13_1 : u32;

var<private> value = vec4f();

var<private> value_1 = vec4f();

var<private> tint_symbol_22_1 : vec3u;

@group(0) @binding(0) var<storage> tint_symbol_7 : tint_symbol_7_block;

@group(0) @binding(1) var<storage, read_write> tint_symbol_8 : tint_symbol_7_block;

@group(0) @binding(2) var<uniform> tint_symbol_9 : tint_symbol_9_block;

@group(0) @binding(3) var<uniform> tint_symbol_10 : tint_symbol_10_block;

fn tint_symbol_11_inner(tint_symbol_12 : u32, tint_symbol_13 : u32) -> vec4f {
  let x_38 = tint_symbol_7.inner[tint_symbol_12].tint_symbol_1;
  let x_44 = (0.01250000018626451492f * tint_symbol_7.inner[tint_symbol_12].tint_symbol_6);
  let x_51 = (((2.0f * 3.14159274101257324219f) / 8.0f) * f32(tint_symbol_13));
  return vec4f(((cos(x_51) * x_44) + x_38.x), ((sin(x_51) * x_44) + x_38.y), 0.0f, 1.0f);
}

fn tint_symbol_11_1() {
  let x_68 = tint_symbol_12_1;
  let x_69 = tint_symbol_13_1;
  let x_67 = tint_symbol_11_inner(x_68, x_69);
  value = x_67;
  return;
}

struct tint_symbol_11_out {
  @builtin(position)
  value_2 : vec4f,
}

@vertex
fn vertexMain(@builtin(instance_index) tint_symbol_12_1_param : u32, @builtin(vertex_index) tint_symbol_13_1_param : u32) -> tint_symbol_11_out {
  tint_symbol_12_1 = tint_symbol_12_1_param;
  tint_symbol_13_1 = tint_symbol_13_1_param;
  tint_symbol_11_1();
  return tint_symbol_11_out(value);
}

fn tint_symbol_20_inner() -> vec4f {
  return vec4f(0.93333333730697631836f, 0.46274510025978088379f, 0.13725490868091583252f, 1.0f);
}

fn tint_symbol_20_1() {
  let x_79 = tint_symbol_20_inner();
  value_1 = x_79;
  return;
}

struct tint_symbol_20_out {
  @location(0)
  value_1_1 : vec4f,
}

@fragment
fn fragmentMain() -> tint_symbol_20_out {
  tint_symbol_20_1();
  return tint_symbol_20_out(value_1);
}

fn tint_symbol_24(tint_symbol_27 : u32, tint_symbol_28 : u32) -> u32 {
  let x_87 = tint_symbol_9.inner;
  return ((x_87 & tint_symbol_28) >> (tint_symbol_27 & 31u));
}

fn tint_symbol_32(tint_symbol_31 : vec2f, tint_symbol_34 : f32, tint_symbol_35 : f32) -> vec2f {
  let x_101 = (sin((tint_symbol_31.y * tint_symbol_34)) * 3.14159274101257324219f);
  return (vec2f(cos(x_101), sin(x_101)) * tint_symbol_35);
}

fn tint_symbol_33(tint_symbol_31_1 : vec2f, tint_symbol_37 : f32, tint_symbol_35_1 : f32) -> vec2f {
  var tint_return_flag_2 = false;
  var tint_return_value_2 = vec2f();
  var x_139 = vec2f();
  var x_144 = vec2f();
  if ((length(tint_symbol_31_1) <= tint_symbol_37)) {
    tint_return_flag_2 = true;
    tint_return_value_2 = (vec2f((-(tint_symbol_31_1.y) - (1.5f * tint_symbol_31_1.x)), (tint_symbol_31_1.x - (1.5f * tint_symbol_31_1.y))) * tint_symbol_35_1);
  } else {
    tint_return_flag_2 = true;
    tint_return_value_2 = (((-(tint_symbol_31_1) / vec2f(length(tint_symbol_31_1))) * tint_symbol_35_1) / vec2f(10.0f));
  }
  let x_146 = tint_return_value_2;
  return x_146;
}

fn tint_symbol_23(tint_symbol_31_2 : vec2f) -> vec2f {
  var tint_return_flag_1 = false;
  var tint_return_value_1 = vec2f();
  let x_154 = tint_symbol_24(4u, 240u);
  switch(x_154) {
    case 2u: {
      tint_return_flag_1 = true;
      let x_162 = tint_symbol_33(tint_symbol_31_2, 0.40000000596046447754f, 0.00004999999873689376f);
      tint_return_value_1 = x_162;
    }
    case 1u: {
      tint_return_flag_1 = true;
      let x_160 = tint_symbol_32(tint_symbol_31_2, 1.5f, 0.00004999999873689376f);
      tint_return_value_1 = x_160;
    }
    case 0u, default: {
      tint_return_flag_1 = true;
      tint_return_value_1 = vec2f();
    }
  }
  let x_164 = tint_return_value_1;
  return x_164;
}

fn tint_symbol_29(tint_symbol_18 : f32) -> f32 {
  return (tint_symbol_18 / 255.0f);
}

fn tint_symbol_30(tint_symbol_18_1 : f32) -> f32 {
  var tint_return_flag_3 = false;
  var tint_return_value_3 = 0.0f;
  if ((tint_symbol_18_1 < 128.0f)) {
    tint_return_flag_3 = true;
    tint_return_value_3 = (pow(2.0f, (((20.0f * tint_symbol_18_1) / 255.0f) - 10.0f)) / 2.0f);
  } else {
    tint_return_flag_3 = true;
    tint_return_value_3 = ((2.0f - pow(2.0f, (((-20.0f * tint_symbol_18_1) / 255.0f) + 10.0f))) / 2.0f);
  }
  let x_195 = tint_return_value_3;
  return x_195;
}

fn tint_symbol_25(tint_symbol_18_2 : f32) -> f32 {
  var tint_return_flag = false;
  var tint_return_value = 0.0f;
  let x_202 = tint_symbol_24(0u, 15u);
  switch(x_202) {
    case 2u: {
      tint_return_flag = true;
      let x_209 = tint_symbol_30(tint_symbol_18_2);
      tint_return_value = x_209;
    }
    case 1u: {
      tint_return_flag = true;
      let x_208 = tint_symbol_29(tint_symbol_18_2);
      tint_return_value = x_208;
    }
    case 0u, default: {
      tint_return_flag = true;
      tint_return_value = 1.0f;
    }
  }
  let x_210 = tint_return_value;
  return x_210;
}

fn tint_symbol_26(tint_symbol_12_2 : u32) {
  tint_symbol_8.inner[tint_symbol_12_2].tint_symbol_1 = tint_symbol_8.inner[tint_symbol_12_2].tint_symbol_2;
  let x_219 = tint_symbol_24(10u, 1024u);
  if ((x_219 == 1u)) {
    tint_symbol_8.inner[tint_symbol_12_2].tint_symbol_3 = tint_symbol_8.inner[tint_symbol_12_2].tint_symbol_4;
  } else {
    tint_symbol_8.inner[tint_symbol_12_2].tint_symbol_3 = vec2f();
  }
  tint_symbol_8.inner[tint_symbol_12_2].tint_symbol_5.x = tint_symbol_8.inner[tint_symbol_12_2].tint_symbol_5.y;
  tint_symbol_8.inner[tint_symbol_12_2].tint_symbol_6 = 1.0f;
  return;
}

fn tint_symbol_21_inner(tint_symbol_22 : vec3u) {
  var x_240 : u32;
  x_240 = tint_symbol_22.x;
  if ((x_240 < arrayLength(&(tint_symbol_7.inner)))) {
    tint_symbol_8.inner[x_240].tint_symbol_1 = (tint_symbol_7.inner[x_240].tint_symbol_1 + tint_symbol_7.inner[x_240].tint_symbol_3);
    let x_252 = tint_symbol_7.inner[x_240].tint_symbol_3.x;
    let x_254 = tint_symbol_7.inner[x_240].tint_symbol_3.y;
    let x_257 = tint_symbol_10.inner;
    let x_262 = tint_symbol_7.inner[x_240].tint_symbol_1;
    let x_260 = tint_symbol_23(x_262);
    tint_symbol_8.inner[x_240].tint_symbol_3 = (vec2f(x_252, (x_254 + x_257)) + x_260);
    let x_265 = tint_symbol_24(9u, 512u);
    if ((x_265 == 1u)) {
      tint_symbol_8.inner[x_240].tint_symbol_5.x = (tint_symbol_7.inner[x_240].tint_symbol_5.x - 1.0f);
      let x_279 = tint_symbol_8.inner[x_240].tint_symbol_5.x;
      let x_277 = tint_symbol_25(x_279);
      tint_symbol_8.inner[x_240].tint_symbol_6 = x_277;
    } else {
      tint_symbol_8.inner[x_240].tint_symbol_5.x = tint_symbol_7.inner[x_240].tint_symbol_5.x;
      tint_symbol_8.inner[x_240].tint_symbol_6 = tint_symbol_7.inner[x_240].tint_symbol_6;
    }
    tint_symbol_8.inner[x_240].tint_symbol_6 = clamp(tint_symbol_8.inner[x_240].tint_symbol_6, 0.0f, 1.0f);
    tint_symbol_8.inner[x_240].tint_symbol_2 = tint_symbol_7.inner[x_240].tint_symbol_2;
    tint_symbol_8.inner[x_240].tint_symbol_4 = tint_symbol_7.inner[x_240].tint_symbol_4;
    if ((abs(tint_symbol_8.inner[x_240].tint_symbol_1.x) > (1.0f + (0.01250000018626451492f * tint_symbol_8.inner[x_240].tint_symbol_6)))) {
      let x_307 = tint_symbol_24(8u, 256u);
      if ((x_307 == 1u)) {
        tint_symbol_8.inner[x_240].tint_symbol_1.x = (tint_symbol_8.inner[x_240].tint_symbol_1.x * -1.0f);
      } else {
        tint_symbol_26(x_240);
      }
    } else {
      if ((abs(tint_symbol_8.inner[x_240].tint_symbol_1.y) > (1.0f + (0.01250000018626451492f * tint_symbol_8.inner[x_240].tint_symbol_6)))) {
        let x_331 = tint_symbol_24(8u, 256u);
        if ((x_331 == 1u)) {
          tint_symbol_8.inner[x_240].tint_symbol_1.y = (tint_symbol_8.inner[x_240].tint_symbol_1.y * -1.0f);
        } else {
          tint_symbol_26(x_240);
        }
      } else {
        if ((tint_symbol_8.inner[x_240].tint_symbol_5.x <= 0.0f)) {
          tint_symbol_26(x_240);
        }
      }
    }
  }
  return;
}

fn tint_symbol_21_1() {
  let x_350 = tint_symbol_22_1;
  tint_symbol_21_inner(x_350);
  return;
}

@compute @workgroup_size(256i, 1i, 1i)
fn computeMain(@builtin(global_invocation_id) tint_symbol_22_1_param : vec3u) {
  tint_symbol_22_1 = tint_symbol_22_1_param;
  tint_symbol_21_1();
}
