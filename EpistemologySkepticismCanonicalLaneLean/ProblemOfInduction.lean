import EpistemologySkepticismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySkepticismCanonicalLaneLean

structure ProblemOfInductionPackage where
  uniformityOfNatureAssumption : Prop
  inductiveInferenceNotDeductive : Prop
  futureMayNotResemblePast : Prop
  noCertaintyFromInduction : Prop

structure ProblemOfInductionEvidence (P : ProblemOfInductionPackage) where
  uniformityOfNatureAssumptionClosed : P.uniformityOfNatureAssumption
  inductiveInferenceNotDeductiveClosed : P.inductiveInferenceNotDeductive
  futureMayNotResemblePastClosed : P.futureMayNotResemblePast
  noCertaintyFromInductionClosed : P.noCertaintyFromInduction

def ProblemOfInductionClosed (P : ProblemOfInductionPackage) : Prop :=
  P.uniformityOfNatureAssumption ∧ P.inductiveInferenceNotDeductive ∧ P.futureMayNotResemblePast ∧ P.noCertaintyFromInduction

theorem problem_of_induction_closed_from_evidence (P : ProblemOfInductionPackage) (E : ProblemOfInductionEvidence P) :
    ProblemOfInductionClosed P := by
  exact And.intro E.uniformityOfNatureAssumptionClosed
    (And.intro E.inductiveInferenceNotDeductiveClosed
      (And.intro E.futureMayNotResemblePastClosed E.noCertaintyFromInductionClosed))

end EpistemologySkepticismCanonicalLaneLean
end HautevilleHouse