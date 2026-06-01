"""Compatibility re-exports for older part 0.5 notebooks.

The current material splits VAE and GAN solutions into separate modules. This
file keeps existing imports from `part5_vaes_and_gans.solutions` working without
carrying the old stale implementation.
"""

from part5_vaes_and_gans.solutions_vaes import *  # noqa: F401,F403
from part5_vaes_and_gans.solutions_gans import *  # noqa: F401,F403
