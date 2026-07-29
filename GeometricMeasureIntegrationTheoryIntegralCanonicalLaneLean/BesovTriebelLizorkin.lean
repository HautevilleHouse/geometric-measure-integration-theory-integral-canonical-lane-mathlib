import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean.GeometricMeasureSpace

namespace HautevilleHouse
namespace GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean

structure BesovTriebelLizorkinPackage (M : GeometricMeasureSpace) where
  functionSpace : Type u
  norm : functionSpace → ℝ
  embeddingTheorem : Prop
  interpolationTheorem : Prop
  traceTheorem : Prop

structure BesovTriebelLizorkinEvidence (M : GeometricMeasureSpace)
    (B : BesovTriebelLizorkinPackage M) where
  embeddingTheoremClosed : B.embeddingTheorem
  interpolationTheoremClosed : B.interpolationTheorem
  traceTheoremClosed : B.traceTheorem

def BesovTriebelLizorkinClosed (M : GeometricMeasureSpace)
    (B : BesovTriebelLizorkinPackage M) : Prop :=
  B.embeddingTheorem ∧ B.interpolationTheorem ∧ B.traceTheorem

theorem besov_triebel_lizorkin_closed_from_evidence (M : GeometricMeasureSpace)
    (B : BesovTriebelLizorkinPackage M) (E : BesovTriebelLizorkinEvidence M B) :
    BesovTriebelLizorkinClosed M B := by
  exact And.intro E.embeddingTheoremClosed
    (And.intro E.interpolationTheoremClosed E.traceTheoremClosed)

end GeometricMeasureIntegrationTheoryIntegralCanonicalLaneLean
end HautevilleHouse