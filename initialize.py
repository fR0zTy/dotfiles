from pathlib import Path
import sys
from argparse import ArgumentParser


CONFIG_DIR = Path.joinpath(Path.home(), ".config")
REPO_DIR = Path(__file__).parent
AVAILABLE_PACKAGES = {
    dirname.name: dirname
    for dirname in REPO_DIR.iterdir()
    if dirname.is_dir() and not dirname.name.startswith(".")
}


def create_symlinks(package_path: Path):
    print(f"-----Processing package {package_path.name}-----")
    link_target_dir = AVAILABLE_PACKAGES[package_path.name]
    for root, dirnames, filenames in link_target_dir.walk():
        for filename in filenames:
            link_target = Path.joinpath(root, filename)
            link_source = Path.joinpath(package_path, link_target.relative_to(root))
            # Remove target link/file if it exists
            link_source.unlink(missing_ok=True)
            link_source.symlink_to(link_target)
            print(f"Created a symlink {link_source} -> {link_target}")


if __name__ == "__main__":
    # Check for platform support
    if sys.platform != "linux":
        raise NotImplementedError("Only support for linux is implemented")

    parser = ArgumentParser()
    parser.add_argument(
        "-p",
        "--packages",
        type=str,
        nargs="*",
        choices=AVAILABLE_PACKAGES,
        default=list(AVAILABLE_PACKAGES),
        help="list of packages to initialize",
    )
    packages = parser.parse_args().packages
    print(f"Evaluating initialization of {packages}")

    # Check config paths
    if not CONFIG_DIR.is_dir():
        raise RuntimeError(
            f"Cannot locate config directory {CONFIG_DIR} at {Path.home()}"
        )

    for dirname in CONFIG_DIR.iterdir():
        if dirname.name in packages:
            create_symlinks(dirname)
