#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/osama/global_ws/src/reach_ros_node"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/osama/global_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/osama/global_ws/install/lib/python2.7/dist-packages:/home/osama/global_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/osama/global_ws/build" \
    "/usr/bin/python" \
    "/home/osama/global_ws/src/reach_ros_node/setup.py" \
    build --build-base "/home/osama/global_ws/build/reach_ros_node" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/osama/global_ws/install" --install-scripts="/home/osama/global_ws/install/bin"
