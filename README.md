# doxygen-docker

tutorial on how to use this : https://sumguy.com/install-use-doxygen-via-docker/

After someone has installed docker, one could run the following line in powershell:
docker run --rm -it -v ${pwd}:/source -v ${pwd}/Docs:/Docs -v ${pwd}/Doxygen:/Doxygen ghcr.io/harmendijkstra/doxygen-docker:latest

Above expect the folder Docs and the file Doxygen in the current directory. The command runs the package on 'harmendijkstra/doxygen-docker:latest' by using the dismounted files and folders stated before.

If you use cmd, you need a different command to mount the file and directories as follows:
docker run --rm -it -v %cd%:/source -v %cd%/Docs:/Docs -v %cd%/Doxygen:/Doxygen  ghcr.io/harmendijkstra/doxygen-docker:latest

Or in linux:
docker run --rm -it -v $(pwd):/source -v $(pwd)/Docs:/Docs -v $(pwd)/Doxygen:/Doxygen ghcr.io/harmendijkstra/doxygen-docker:latest



# Using debugger
If someone wants to run docker in the debugger one can run the following line:

docker run --rm -it -u root -v ${pwd}:/source -v ${pwd}/Docs:/Docs -v ${pwd}/Doxygen:/Doxygen --entrypoint /bin/sh ghcr.io/harmendijkstra/doxygen-docker:latest

After that one can for example check the dismounted directories with: 'ls' and go in the source directory to see if the Doxygen file is there:
'ls', 'cd source', 'cat Doxygen'
