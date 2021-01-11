#!/bin/sh

# OPTS
# -p [the name of the product--i.e. the ${PRODUCT_NAME} var in Xcode]
# -o [the output directory for the mocks]
# $@ [the args following the output directory are the files to create mocks for]
while getopts p:o:e: flag; do
	case "${flag}" in
		p ) PRODUCT_NAME=${OPTARG};;
		o ) OUTPUT_DIR=${OPTARG};;
		e ) EXCLUDE=${OPTARG};;
	esac
done
shift $(( OPTIND - 1 ))

echo "Mocks Output directory = ${OUTPUT_DIR}"
[ -d ${OUTPUT_DIR} ] || mkdir ${OUTPUT_DIR}

# Generate mock files, include as many input files as you'd like to create mocks for.
# Use a directory to seperate each mock into its own file
# We mock every Swift file in the input directories above

# !! If not using `cocoapods-binary` uncomment and use the line below to run Cuckoo
# "${PODS_ROOT}/Cuckoo/run" generate --testable "${PRODUCT_NAME}" \

# !! Otherwise use the line below
"${PODS_ROOT}/_Prebuild/Cuckoo/run" generate --testable "${PRODUCT_NAME}" \
--output "${OUTPUT_DIR}" \
--file-prefix "${PRODUCT_NAME}_" \
--exclude "${EXCLUDE}" \
--glob "$@"

# ... and so forth, the last line should never end with a backslash

# After running once, locate the Cuckoo directory and add it into your Xcode test target group.
echo "Exported mocks to ${OUTPUT_DIR} -- Add these to your tests in Xcode "