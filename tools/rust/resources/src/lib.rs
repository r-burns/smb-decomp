use std::borrow::Cow;

use serde::{Deserialize, Serialize};
#[derive(Debug, Serialize, Deserialize)]
#[serde(untagged)]
pub enum TableEntry<'a> {
    NameOnly(Cow<'a, str>),
    Detailed {
        name: Cow<'a, str>,
        internal: Option<u32>,
        external: Option<u32>,
        decompressed: u32,
        compressed: Option<u32>,
    },
}
