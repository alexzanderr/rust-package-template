
#![allow(
    dead_code,
    unused_imports,
    unused_variables,
    unused_macros,
    unused_assignments,
    unused_mut,
    non_snake_case,
    unused_must_use
)]

use pretty_assertions::assert_eq;
use rstest::rstest;

// lib crate rust-python-objects
use {{ package-name}}::*;

mod common;


#[test]
fn test_common() -> Result<(), ()> {
    common::setup();
    Ok(())
}

