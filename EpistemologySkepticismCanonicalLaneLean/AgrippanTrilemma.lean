import EpistemologySkepticismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySkepticismCanonicalLaneLean

structure AgrippanTrilemmaPackage where
  infiniteRegress : Prop
  circularJustification : Prop
  dogmaticFoundation : Prop
  noJustificationPossible : Prop

structure AgrippanTrilemmaEvidence (A : AgrippanTrilemmaPackage) where
  infiniteRegressClosed : A.infiniteRegress
  circularJustificationClosed : A.circularJustification
  dogmaticFoundationClosed : A.dogmaticFoundation
  noJustificationPossibleClosed : A.noJustificationPossible

def AgrippanTrilemmaClosed (A : AgrippanTrilemmaPackage) : Prop :=
  A.infiniteRegress ∧ A.circularJustification ∧ A.dogmaticFoundation ∧ A.noJustificationPossible

theorem agrippan_trilemma_closed_from_evidence (A : AgrippanTrilemmaPackage) (E : AgrippanTrilemmaEvidence A) :
    AgrippanTrilemmaClosed A := by
  exact And.intro E.infiniteRegressClosed
    (And.intro E.circularJustificationClosed
      (And.intro E.dogmaticFoundationClosed E.noJustificationPossibleClosed))

end EpistemologySkepticismCanonicalLaneLean
end HautevilleHouse