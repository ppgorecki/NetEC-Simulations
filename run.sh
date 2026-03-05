
# A - 15
# B - 27
# C - 3

if ! [[ $1 ]]
then
   cat << EOF 
Usage:
	$0 [fixB] [DIRPREFIX]

Requirements:
	netec repo in the main dir

Examples:
	first run: $0 replicate_1
	second run: $0 fixB replicate_1
EOF
   exit -1
fi

if ! [[ -f netec/netec.py ]]
then

	echo "Download netec first: "	
	echo "git clone git@github.com:ppgorecki/netec.git"
	exit -1
fi

VARIANTS="wgdac wgdab wgdbc wgdb wgda wgdc nowgd"

if [[ $1 == fixB ]]
then
	shift
	# add 27 and continue
	parallel --ungroup -j 4 netec/netec.py --network data/net.nwk --gene_trees data/{1}.nolabelsuffix.gtrees --extended_episodes_search --out_dir "$1"_fixB/{1} --fixed_episodes "27" --gsestyle --verbose 4 --locked_epi_support --save_embedding ::: $VARIANTS
else
	parallel --ungroup -j 4 netec/netec.py --network data/net.nwk --gene_trees data/{1}.nolabelsuffix.gtrees --extended_episodes_search --out_dir $1/{1} --verbose 2 --gsestyle --locked_epi_support --save_embedding ::: $VARIANTS
fi


