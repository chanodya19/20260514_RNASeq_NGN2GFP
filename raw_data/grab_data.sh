#!/bin/bash
for i in $(seq -w 0001 0038); do
    rclone copy -P \
        --include "CP604-S10-001L${i}_good_R1.fastq*" \
        --include "CP604-S10-001L${i}_good_R2.fastq*" \
        box_chano:/genomicData/sequences/Illumina/RNASeq/human/BMK250331_CP604_S10_April26_Chano \
        ./
done
