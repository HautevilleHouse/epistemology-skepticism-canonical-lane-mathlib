import EpistemologySkepticismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySkepticismCanonicalLaneLean

structure CartesianSkepticismPackage where
  brainInVatScenario : Prop
  deceivingDemonScenario : Prop
  perceptualKnowledgeUndermined : Prop
  closureUnderKnownEntailment : Prop

structure CartesianSkepticismEvidence (C : CartesianSkepticismPackage) where
  brainInVatScenarioClosed : C.brainInVatScenario
  deceivingDemonScenarioClosed : C.deceivingDemonScenario
  perceptualKnowledgeUnderminedClosed : C.perceptualKnowledgeUndermined
  closureUnderKnownEntailmentClosed : C.closureUnderKnownEntailment

def CartesianSkepticismClosed (C : CartesianSkepticismPackage) : Prop :=
  C.brainInVatScenario ∧ C.deceivingDemonScenario ∧ C.perceptualKnowledgeUndermined ∧ C.closureUnderKnownEntailment

theorem cartesian_skepticism_closed_from_evidence (C : CartesianSkepticismPackage) (E : CartesianSkepticismEvidence C) :
    CartesianSkepticismClosed C := by
  exact And.intro E.brainInVatScenarioClosed
    (And.intro E.deceivingDemonScenarioClosed
      (And.intro E.perceptualKnowledgeUnderminedClosed E.closureUnderKnownEntailmentClosed))

end EpistemologySkepticismCanonicalLaneLean
end HautevilleHouse