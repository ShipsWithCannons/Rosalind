from argparse import ArgumentParser


class DnaNucleobaseSequence:
    """
    Contains a DNA nucleobase sequence.
    Counts the occurence of the available bases.
    """
    def __init__(self, sequence):
        self.sequence = sequence.upper()
        self.counted_nucleobases = self.count_nucleobases()

    def count_nucleobases(self):
        """
        Return the count of nucleobases in sequence.

        Since this is explicitly a DNA sequence, only adenine, cytosine,
        guanine and thymine are allowed to be present.

        Exit on KeyError (invalid nucleobase(s)).
        """
        count = {
            "A": 0,
            "C": 0,
            "G": 0,
            "T": 0,
        }
        try:
            for nucleobase in self.sequence:
                count[nucleobase] += 1
            return count
        except KeyError:
            print("Invalid DNA nucleobase encountered. Aborting.")
            raise SystemExit

    def space_separated_nucleobases(self):
        """
        Return the count of A, C, G and T separated by a single space.
        """
        return "{0} {1} {2} {3}".format(
            self.counted_nucleobases["A"],
            self.counted_nucleobases["C"],
            self.counted_nucleobases["G"],
            self.counted_nucleobases["T"]
        )


def main():
    parser = ArgumentParser(description='DNA nucleobase sequence')
    parser.add_argument(
        'sequence',
        type=str,
        help='Should contain a DNA nucleobase sequence'
        )

    args = parser.parse_args()

    seq = DnaNucleobaseSequence(args.sequence)
    print(seq.space_separated_nucleobases())

if __name__ == "__main__":
    main()
